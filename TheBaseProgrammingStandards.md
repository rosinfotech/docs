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
  * Uniformity;

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

  * Readability;
  * Uniformity;

* Examples:

  * Case #1:

    * Incorrect:

      ```typescript
      const licenseMitText = await fileRead(licenseMitPathFile);
      ```

    * Correct:

      ```typescript
      const licenseMITText = await fileRead(licenseMITPathFile);
      ```

### Variables

#### Paths and files

##### 2108211636

* Description:

  * Vairables containing file name with extension use "File" suffix;

* Benefits:

  * Clarity;
  * Uniformity;

* Examples:

  * Case #1

    * Incorrect:
  
      ```typescript
      const myNotes = `my_notes.txt`;
      ```

    * Correct:

      ```typescript
      const myNotesFile = `my_notes.txt`;
      ```

##### 2108211643

* Description:

  * Vairables containing file name without extension use "FileNoExtension" suffix;

* Benefits:

  * Clarity;
  * Uniformity;

* Examples:

  * Case #1

    * Incorrect:
  
      ```typescript
      const myNotes = `my_notes`;
      ```

    * Correct:

      ```typescript
      const myNotesFileNoExtension = `my_notes`;
      ```

##### 2108211652

* Description:

  * Vairables containing a directory name use "Directory" suffix;

* Benefits:

  * Clarity;
  * Uniformity;

* Examples:

  * Case #1

    * Incorrect:
  
      ```typescript
      const myNotesTheDir = `docs`;
      ```

    * Correct:

      ```typescript
      const myNotesDirectory = `docs`;
      ```

##### 2108211646

* Description:

  * Vairables containing path to some directory use "Path" suffix;

* Benefits:

  * Clarity;
  * Uniformity;

* Examples:

  * Case #1

    * Incorrect:
  
      ```typescript
      const myNotesDir = `/etc/docs/`;
      ```

    * Correct:

      ```typescript
      const myNotesPath = `/etc/docs/`;
      ```

##### 2108211659

* Description:

  * Vairables containing path to the concrete file use "PathFile" suffix;

* Benefits:

  * Clarity;
  * Uniformity;

* Examples:

  * Case #1

    * Incorrect:
  
      ```typescript
      const myNotes = `/etc/docs/my_notes.txt`;
      ```

    * Correct:

      ```typescript
      const myNotesPathFile = `/etc/docs/my_notes.txt`;
      ```
