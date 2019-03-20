#include "WordTable.hpp"

size_t WordTable::insert(Word w)
{
  mMonomials.push_back(w);
  return mMonomials.size();
}

size_t WordTable::insert(Word w, std::vector<Triple>& newRightOverlaps)
{
  mMonomials.push_back(w);
  rightOverlaps(newRightOverlaps); // find (right) overlaps with most recent added word 'w'.
  return mMonomials.size();
}

void WordTable::subwordPositions(Word word1,
                                 Word word2,
                                 std::vector<int>& result_start_indices)
// if there exists monomials p, q, such that p*word1*q == word2, then
// the position of word1 in word2 is added (there may be several
// matches)
{
  for (auto j = 0; j <= word2.size() - word1.size(); ++j)
    {
      bool match = true;
      for (auto k = 0; k < word1.size(); ++k)
        if (word1.begin()[k] != word2.begin()[j+k])
          {
            match = false;
            break;
          }
      if (match) result_start_indices.push_back(j);
    }
}

bool WordTable::subwordPosition(Word word1,
                                 Word word2,
                                 int& result_start_index)
// if there exists monomials p, q, such that p*word1*q == word2, then
// the first position of word1 in word2 is returned in result_start_index
// and true is returned.  If no match, then false is returned,
// and result_start_index is not touched.
{
  for (auto j = 0; j <= word2.size() - word1.size(); ++j)
    {
      bool match = true;
      for (auto k = 0; k < word1.size(); ++k)
        if (word1.begin()[k] != word2.begin()[j+k])
          {
            match = false;
            break;
          }
      if (match)
        {
          result_start_index = j;
          return true;
        }
    }
  return false;
}

void WordTable::subwords(Word word,
                           std::vector<std::pair<int,int>>& output) const
{
  std::vector<int> start_indices;
  for (auto i = 0; i < mMonomials.size(); ++i)
    {
      start_indices.clear();
      subwordPositions(mMonomials[i], word, start_indices);
      for (auto j : start_indices)
        output.push_back(std::make_pair(i,j));
    }
}

bool WordTable::subword(Word word,
                        std::pair<int,int>& output) const
{
  int start_index = -1;
  for (auto i = 0; i < mMonomials.size(); ++i)
    {
      if (subwordPosition(mMonomials[i], word, start_index))
        {
          output = std::make_pair(i, start_index);
          return true;
        }
    }
  return false;
}

void WordTable::superwords(Word word,
                           std::vector<std::pair<int,int>>& output) const
{
  std::vector<int> start_indices;
  for (auto i = 0; i < mMonomials.size(); ++i)
    {
      start_indices.clear();
      subwordPositions(word, mMonomials[i], start_indices);
      for (auto j : start_indices)
        output.push_back(std::make_pair(i,j));
    }
}

// This function finds overlap where suffix of word at lindex == prefix of word at rindex
void WordTable::overlaps(Word word1,
                         Word word2,
                         std::vector<int>& result_overlaps)
{
  if (word1.size() <= 1) return;
  for (int i = word1.size() - 1; i > 0 and i > word1.size() - word2.size(); --i)
    {
      Word suffix(word1.begin() + i, word1.end());
      Word prefix(word2.begin(), word2.begin() + word1.size() - i); // indices should be in range.
      if (suffix == prefix)
        result_overlaps.push_back(i);
    }
}

void WordTable::leftOverlaps(std::vector<Triple>& newLeftOverlaps) const
{
  // word here is the last word in the dictionary.
  // For left overlap: dictword is a word in the dictionary NOT word.
  // For right overlap: dictword is any word in the dictionary.
  // A left overlap: suffix(dictword) == prefix(word)
  // A right overlap: prefix(dictword) == suffix(word).
  //   if dictword == word, a match will be a right overlap, NOT a left overlap.
  // A returned triple:
  //   (left overlap):

  int word_index = mMonomials.size()-1;
  std::vector<int> overlap_indices;
  for (int i=0; i<word_index; ++i)
    {
      overlap_indices.clear();
      overlaps(mMonomials[i], mMonomials[word_index], overlap_indices);
      for (auto j : overlap_indices)
        newLeftOverlaps.push_back(std::make_tuple(i, j, word_index));
    }

  // triples will be <dict word index, index into dict word where suffix starts, word_index>.
}

void WordTable::rightOverlaps(std::vector<Triple>& newRightOverlaps) const
// find (right) overlaps with most recent added word 'w'.
{
  int word_index = mMonomials.size()-1;
  std::vector<int> overlap_indices;
  for (int i=0; i<=word_index; ++i)
    {
      overlap_indices.clear();
      overlaps(mMonomials[word_index], mMonomials[i], overlap_indices);
      for (auto j : overlap_indices)
        newRightOverlaps.push_back(std::make_tuple(word_index, j, i));
    }
}

// Local Variables:
// compile-command: "make -C $M2BUILDDIR/Macaulay2/e "
// indent-tabs-mode: nil
// End:
