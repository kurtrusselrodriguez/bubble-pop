# XAMPP database setup

## Start the game

Double-click `START_BUBBLEPOP.bat` in this folder. Do not double-click the extensionless `BUBBLEPOP` file; that file is the Python source.

1. Start **MySQL** in the XAMPP Control Panel.
2. Install dependencies with `py -m pip install -r requirements.txt`.
3. Run `py BUBBLEPOP`.

The game creates the `bubble_pop` database and `players` table automatically on first launch. It uses the default XAMPP connection: host `127.0.0.1`, port `3306`, user `root`, and an empty password.

For a custom MySQL setup, configure these environment variables before launching:

```powershell
$env:BUBBLEPOP_DB_HOST = "127.0.0.1"
$env:BUBBLEPOP_DB_PORT = "3306"
$env:BUBBLEPOP_DB_USER = "root"
$env:BUBBLEPOP_DB_PASSWORD = ""
$env:BUBBLEPOP_DB = "bubble_pop"
py BUBBLEPOP
```

If MySQL is unavailable, the game continues using `bubble_accounts.json` and syncs to MySQL the next time a database connection is available.

To force local-only mode while developing, use `$env:BUBBLEPOP_DB_DISABLED = "1"` before launching.