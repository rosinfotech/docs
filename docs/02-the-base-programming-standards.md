[![rosinfo.tech](https://cdn.rosinfo.tech/id/logo/id_logo_width_160.svg "rosinfo.tech")](https://rosinfo.tech)

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

  * Case #3:

    * Incorrect:

      ```typescript
      const foo = () => {
        const fileArchive = archiveCreate( path );
      }
      ```

    * Correct:

      ```typescript
      const foo = () => {
        const archiveFile = archiveCreate( path );
      }
      ```

      * In function scope, "archive" is more general;

      * Also, sorting by names will give more conveniences in cases "archive*";

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

  * Variables containing file name with extension use "File" suffix;

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

  * Variables containing file name without extension use "FileNoExtension" suffix;

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

  * Variables containing a directory name use "Directory" suffix;

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

  * Variables containing path to some directory use "Path" suffix;

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

  * Variables containing path to the concrete file use "PathFile" suffix;

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

### Functions and methods

#### Function's and method's definition

##### 0109211651

* Description:

  * If the function (method) at the time of creation has no more than 3 required arguments, then these arguments are defined as separate arguments;

    * Note! Required arguments provide the basic execution of the function.

  * All future optional arguments are specified in the argument of the option object, which is placed at the position of the last argument;

* Benefits:

  * Uniformity;

* Examples:

  * Case #1

    * Incorrect:

      ```typescript
      const foo = ( required_a, required_b, required_c, not_required_dd, not_required_ee, not_required_ff, not_required_gg ) => {
        …
      }
      ```

    * Correct:

      ```typescript
      const foo = (
        required_a,
        required_b,
        required_c,
        options: OptionsInterface
      ) => {

        const {
          not_required_dd,
          not_required_ee,
          not_required_ff,
          not_required_gg,
        } = Object.assign( {
          not_required_dd: "default_dd",
          not_required_ee: "default_ee",
          not_required_ff: "default_ff",
          not_required_gg: "default_gg",
        }, options );

        …

      }      
      ```
