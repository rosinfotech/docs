[![rosinfo.tech](/assets/id_logo_width_160.svg "rosinfo.tech")](https://rosinfo.tech)

# The Rosinfotech Base Programming Standards

## The Name Convention

### Base principles

#### 0305212001

* Description:

  * Sequence:

    * From general to specific;

* Benefits:

  * Sortable;
  * Structurity;
  * Quick programming;

* Examples:

  * Case #1:

    * Incorrect:

      ```typescript
      const modalDialog = new ModalDialog();
      ```

    * Correct:

        ```typescript
        const dialogModal = new DialogModal();
        ```

  * Case #2:
    * Incorrect:

      ~/notes_my.txt

    * Correct:

      ~/my_notes.txt

#### 0821211519

* Description:

  * Abbreviations is use in uppercase if the concrete naming concept include uppercase;

* Benefits:

  * Readability

* Examples:

  * Case #1:

    * Incorrect:

      ```typescript
      const licenseMitText = fileRead(licenseMitPathFile);
      ```

    * Correct:

      ```typescript
      const licenseMITText = fileRead(licenseMITPathFile);
      ```
