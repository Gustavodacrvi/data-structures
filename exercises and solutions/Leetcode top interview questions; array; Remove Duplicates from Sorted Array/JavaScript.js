var removeDuplicates = function(nums) {
  duplicates = new Set();
  let length = nums.length
  for (let i = 0;i < length;i++){
    if (!duplicates.has(nums[i]))
      duplicates.add(nums[i])
  }
  length = duplicates.size
  duplicates = Array.from(duplicates)
  for (let i = 0;i < length;i++)
    nums[i] = duplicates[i]
  nums.splice(length)
  return nums.length
};
