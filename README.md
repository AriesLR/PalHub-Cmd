# PalHub - Palworld Server Manager

PalHub is a lightweight server manager specifically designed for Palworld servers. It simplifies the process of starting and automating restarts for your Palworld server, ensuring seamless gameplay experiences.

## Features

- **Server Start**: Start your Palworld server with a single click, getting it up and running quickly.
- **Automated Restart**: Set up automated restarts for your server at customizable intervals to keep it fresh and optimized.
- **Simple Setup**: Easy configuration through the script, requiring minimal effort to get started.

## Requirements

- Palworld Server installed on your system.
- Windows operating system.

## Usage

1. **Configure PalHub:**
   - Edit the script (`PalHub.bat`) to set your server directory (`SERVER_DIR`) and restart interval (`RESTART_INTERVAL`) according to your setup.

2. **Start Server:**
   - Run the script `PalHub.bat`.
   - PalHub will start your Palworld server.

3. **Automated Restarts:**
   - PalHub automatically waits for the specified interval (`RESTART_INTERVAL`) and restarts the server.
   - Customize the interval by adjusting the `RESTART_INTERVAL` variable in the script.

## Script Explanation

- **`SERVER_DIR`**: Set the directory where your Palworld server is located.
- **`RESTART_INTERVAL`**: Set the interval (in seconds) for automated server restarts.

## Customization

- You can modify the script to add more functionalities or tailor it to your specific requirements.
- For advanced customization or additional features, consider extending the script or integrating it with other tools.

## Contributing

Contributions are welcome! If you have any suggestions, improvements, or bug fixes, feel free to open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).
