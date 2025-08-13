# Backup  
_Create versioned backups of files / folders_  

---  

## Usage:  
1. Create/Append a backup:  
  - `bak <target>`  
2. Restore from a backup:  
  - `res <archive>`  
  - Choose the number representing the version you wish to restore  

## Installation:  
1. Install the project:  
  - `curl -#L https://github.com/BriskBear/backup/raw/refs/heads/release/install | bash`  

## Configuration:  
> By default - BAK_DIR unset - backups are named '.\<target\>.txz'  
__Note__: _Hidden_  
1. Set a directory for backups to be stored:  
  - `export BAK_DIR=<path_to_backup_dir>`  
> This saves backups as $BAK_DIR/\<target\>.txz  
__Note__: _Visible_  

### Description:  

__Backup__ _n_: A tar.xz archive made up of a collection of tar.xz archives, each
named as their self-md5sum  
