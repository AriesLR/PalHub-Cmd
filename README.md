# PalHub - Palworld Server Manager

PalHub is a lightweight server manager specifically designed for Palworld servers. It simplifies the process of starting and automating restarts for your Palworld server, ensuring seamless gameplay experiences.

> [!NOTE]
> Download the successor to Palhub-Cmd, [HERE](https://github.com/AriesLR/Palhub)

## Features

- **Server Start**: Start your Palworld server with a single click, getting it up and running quickly.
- **Automated Restart**: Set up automated restarts for your server at customizable intervals to keep it fresh and optimized.
- **Backup and Purge**: Automatically backup your save and config files when the server restarts, and purge old backups to save disk space.
- **Rcon Integration**: Control your Palworld server remotely using the Rcon protocol for easy administration and management.
- **Simple Setup**: Easy configuration through the script, requiring minimal effort to get started.

## Requirements

- Palworld Server installed on your system.
- Windows operating system.
- [7-Zip](https://www.7-zip.org/) installed to perform backups.

## Usage

1. **Configure PalHub:**
   - Edit the config (`config\config.bat`) according to your server.

2. **Start Server:**
   - Run the script `PalHub.bat`.
   - PalHub will start your Palworld server.

## Config Options

> [!IMPORTANT]  
> You must configure PalHub or it will not work.

- **`ZIP_DIR`**: Set the directory where 7Zip is installed.
- **`SERVER_DIR`**: Set the directory where your Palworld server is located.
- **`BACKUP_DIR`**: Set the directory to store backup files for saves.
- **`RCON_IP`**: Set the IP:Port of your server.
- **`RCON_PASS`**: Set the Rcon (Admin) password of your server.
- **`PURGE_INTERVAL`**: Set the interval (in minutes) to purge old backups.
- **`RESTART_INTERVAL`**: Set the interval (in seconds) for automated server restarts.

## Customization

- You can modify the script to add more functionalities or tailor it to your specific requirements.

## Contributing

Contributions are welcome! If you have any suggestions, improvements, or bug fixes, feel free to open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).

## Acknowledgements

- [Rcon-cli](https://github.com/gorcon/rcon-cli) - For the command line based rcon client.
- [Palworld](https://www.pocketpair.jp/palworld) - For inspiring this project.
