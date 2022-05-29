# grep

## 1

|       Command                                                       |             Description                                                |
|---------------------------------------------------------------------|------------------------------------------------------------------------| 
|`grep SEARCH_PHRASE FILE_NAME.FILE_FORMAT`                           | Search for a given phrase in a file.                                   |
|`grep SEARCH_PHRASE FILE_1_NAME.FILE_FORMAT FILE_2_NAME.FILE_FORMAT` | Search for a given phrase across multiple files.                       |
|`grep "##" MARKDOWN_FILE_1.FILE_FORMAT MARKDOWN_FILE_2.FILE_FORMAT`  | Search for sub-headings in across multiple markdown files.             |
|`grep "##" *.md`                                                     | Search for sub-headings in across all markdown files via glob pattern. |

## 2

|       Command                                 |             Description                                                                                                         |
|-----------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------| 
|`grep -r SEARCH_PHRASE .`                      | Search for a phrase recursively from a given directory and explore all files and sub folders and files within those sub folders.|
|`grep -r SEARCH_PHRASE example/path/to/folder` | Search for a phrase recursively from a given directory and explore all files and sub folders and files within those sub folders.|
