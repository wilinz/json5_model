## [4.0.0] - 2025-4-29

### Changed
Add two cli flag:
| Parameter          | Description                                                        | Default Value |
|--------------------|--------------------------------------------------------------------|---------------|
| `--no-file-prefix` | Disable auto-adding class name prefixes (may cause name conflicts) | false         |
| `--prefix-regexp`  | Apply RegExp to filename to extract class name prefix              | (.+?)         |

## [3.0.2] - 2025-4-29

### Fixed
Fix ListItem is generated repeatedly

## [3.0.1] - 2025-4-29

### Fixed
Fix List<Item?> is recognized as a List<dynamic?>

## [3.0.0] - 2025-4-29

### Added
- **Enhanced List Processing**:
    - Smart merging of Map fields within Lists
    - Automatic type conversion between `double`/`int`/`null` in Lists
    - Improved handling of mixed-type List elements
- New `--restore` flag to recover renamed JSON files
- `--keepsource` option to preserve original JSON files
- Enhanced type inference system
- Automatic null safety handling
- Support for `equatable` and `copy_with_extension` packages
- Better handling of empty JSON objects `{}`

### Fixed
- **List type inference** now more accurate for:
    - Nullable elements (`List<Type?>`)
    - Mixed numeric types (`int`/`double`/`null`)
    - Nested object structures
- Issue with numeric type promotion
- Bug in nested list handling
- Path resolution problems on Windows systems
- List processor implementation
- Dart Keyword conflicts in generated code
- Generation errors with empty JSON objects
- README documentation updates

### Changed
- Improved error handling for malformed JSON
- Optimized code generation performance
- Restructured command line interface
- Sync with vei origin & master branches

## [2.1.1] - 2024.4.22
* Fix empty judgment and List judgment wilinz 5 minutes ago

## [2.1.0] - 2024.4.22
* Add `emptyInstance` factory constructor to each generated object and set it as default value

## [2.0.3] - 2023.10.14
* Update readme.md

## [2.0.2] - 2023.10.14
* Fix the top-level xxxListFormJson(List json) function

## [2.0.1] - 2023.8.3
* Fields are spaced one line apart

## [2.0.0] - 2023.8.3
* Automatically rename source files starting with '_' (optional)
* Each JSON-generated file is placed in a separate folder
* Automate git add

## [1.0.0]
* release version
## [1.0.0-beta1]

* first release version

## [0.0.2] - 2019.5.10

* update doc and demo
