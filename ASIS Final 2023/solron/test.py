def find_sum_pairs(arr, target):
    result = []

    def backtrack(current_sum, current_combination, start_index):
        if current_sum == target:
            result.append(current_combination.copy())  # Add a copy to avoid modifying the original list
            return
        for i in range(start_index, len(arr)):
            if current_sum + arr[i] <= target:
                current_combination.append(arr[i])
                backtrack(current_sum + arr[i], current_combination, i + 1)  # Move to the next index
                current_combination.pop()  # Backtrack to explore other options

    backtrack(0, [], 0)
    return result


arr = [33541958538, 33711362369, 67592128569, 136031276293, 273078975572, 546496758806, 1094179344429, 2187342265872, 4382307704139, 8800529020450, 17642392575664, 35327983128233, 12308366115487, 25214727754404, 49893800595186, 45379148331636, 37888369397678, 26498680958455, 54659044095189, 15650289463912, 52392194872999, 20269318638111, 40775116990818, 23021525078358, 50183764598160, 51828726978965, 37889335203205, 691151635619, 14295987014816, 57609077308324, 41939378822087, 5393610019818, 52090291638758, 42103666638070, 27130592165685, 18531429377262, 18864891238267, 35573776818146, 23661966046392, 12549238768275]
target = 488264148951600

pairs = find_sum_pairs(arr, target)
print(pairs)