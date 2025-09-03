# Bible Gematria Calculator

This is a simple Delphi application to calculate the Gematria of the Bible. Gematria is a system of assigning a numerical value to a word or phrase.

## Gematria Systems

This application implements two Gematria systems:

*   **English Gematria**: A system where 'A' is 6, 'B' is 12, and so on, in increments of 6.
*   **Simple Gematria**: A simple system where 'A' is 1, 'B' is 2, 'C' is 3, and so on.

## How to Use

1.  **Load the Bible**: Click the "Load Bible" button to load the `bible.txt` file. Make sure the `bible.txt` file is in the same directory as the application.
2.  **Calculate Gematria**: Click the "Calculate" button to calculate the Gematria for each verse in the loaded Bible file.

## Database

The application has a database connection feature, but it seems to be incomplete. It uses `TUniConnection` and `TUniQuery` to connect to a MySQL database.

## Dependencies

*   A `bible.txt` file containing the text of the Bible.
*   The project uses the UniDAC component library for database access.

## License

This project is licensed under the MIT License.
