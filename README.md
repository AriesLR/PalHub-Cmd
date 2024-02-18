# PalHub - Palworld Server Manager

PalHub is a lightweight server manager specifically designed for Palworld servers. It simplifies the process of starting and automating restarts for your Palworld server, ensuring seamless gameplay experiences.

## Features

- **Server Start**: Start your Palworld server with a single click, getting it up and running quickly.
- **Automated Restart**: Set up automated restarts for your server at customizable intervals to keep it fresh and optimized.
- **Backup and Purge**: Automatically backup your save and config files when the server restarts, and purge old backups to save disk space.
- **Simple Setup**: Easy configuration through the script, requiring minimal effort to get started.

## Requirements

- Palworld Server installed on your system.
- Windows operating system.
- [7-Zip](https://www.7-zip.org/) installed to perform backups.

## Usage

1. **Configure PalHub:**
   - Edit the script (`PalHub.bat`) to set your server directory (`SERVER_DIR`), backup directories (`SAVEBACKUP_DIR` and `CONFIGBACKUP_DIR`), purge interval (`PURGE_INTERVAL`), and restart interval (`RESTART_INTERVAL`) according to your setup.

2. **Start Server:**
   - Run the script `PalHub.bat`.
   - PalHub will start your Palworld server.

## Script Explanation

- **`SERVER_DIR`**: Set the directory where your Palworld server is located.
- **`SAVEBACKUP_DIR`**: Set the directory to store backup files for saves.
- **`CONFIGBACKUP_DIR`**: Set the directory to store backup files for config.
- **`PURGE_INTERVAL`**: Set the interval (in minutes) to purge old backups.
- **`RESTART_INTERVAL`**: Set the interval (in seconds) for automated server restarts.

## Customization

- You can modify the script to add more functionalities or tailor it to your specific requirements.

## Contributing

Contributions are welcome! If you have any suggestions, improvements, or bug fixes, feel free to open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).

## Acknowledgements

- [Palworld](https://www.pocketpair.jp/palworld) - For inspiring this project.
- [7-Zip](https://www.7-zip.org/) - For providing the tools necessary for backup functionality.
