-- 1. Insert Topics first
INSERT INTO public.topics (id, name, description) VALUES
(1, 'Arrays & Hashing', 'Questions that involve arrays, hash maps, and hash sets.'),
(2, 'Two Pointers', 'Questions that are efficiently solved using two pointers.'),
(3, 'Stack', 'Questions that involve stack data structure (LIFO).')
ON CONFLICT (id) DO NOTHING;

-- 2. Insert Questions
INSERT INTO public.questions (title, topic_id, difficulty, description, test_cases) VALUES
(
    'Two Sum',
    1, -- Arrays & Hashing
    'Easy',
    'Given an array of integers `nums` and an integer `target`, return indices of the two numbers such that they add up to `target`. You may assume that each input would have exactly one solution, and you may not use the same element twice. You can return the answer in any order.',
    '[
        {"input": "nums = [2,7,11,15], target = 9", "expected_output": "[0,1]"},
        {"input": "nums = [3,2,4], target = 6", "expected_output": "[1,2]"},
        {"input": "nums = [3,3], target = 6", "expected_output": "[0,1]"}
    ]'::jsonb
),
(
    'Valid Parentheses',
    3, -- Stack
    'Easy',
    'Given a string `s` containing just the characters `''(''`, `'')''`, `''{''`, `''}''`, `''[''` and `'']''`, determine if the input string is valid. An input string is valid if open brackets are closed by the same type of brackets, and in the correct order.',
    '[
        {"input": "s = \"()\"", "expected_output": "true"},
        {"input": "s = \"()[]{}\"", "expected_output": "true"},
        {"input": "s = \"(]\"", "expected_output": "false"}
    ]'::jsonb
),
(
    'Container With Most Water',
    2, -- Two Pointers
    'Medium',
    'You are given an integer array `height` of length `n`. There are `n` vertical lines drawn such that the two endpoints of the `ith` line are `(i, 0)` and `(i, height[i])`. Find two lines that together with the x-axis form a container, such that the container contains the most water. Return the maximum amount of water a container can store.',
    '[
        {"input": "height = [1,8,6,2,5,4,8,3,7]", "expected_output": "49"},
        {"input": "height = [1,1]", "expected_output": "1"}
    ]'::jsonb
);
