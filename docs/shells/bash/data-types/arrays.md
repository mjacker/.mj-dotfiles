# Arrays in bahs 4.0+

`fruits=("apple" "banana" "cherry")`

echo ${fruits[0]}     # → apple
echo "${fruits[@]}"   # → apple banana cherry

| Syntax           | Behavior                           |
|------------------|------------------------------------|
| `${array}`       | First element only                 |
| `${array[@]}`    | All elements, unquoted             |
| `"${array[@]}"`  | All elements, **quoted and safe**  |
| `"${array[*]}"`  | All elements as **one string**     |

