# FiveM Script

A versatile FiveM script with client-server communication and database integration.

## Features

- Client-server communication with ESX framework
- Database integration for storing player data
- Configurable settings for script behavior

## Requirements

- FiveM server with ESX framework
- MySQL database

## Installation

1. Download the script files.
2. Place them in your FiveM server's resources directory.
3. Add `ensure FiveMScript` to your server.cfg file.

## Usage

### Client Commands

| Command | Description |
|---------|-------------|
| /fivemscript | Example command that triggers a server event |

### Server Commands

| Command | Description |
|---------|-------------|
| /fivemscript | Admin command that shows a notification |

## Configuration

Edit the `config.lua` file to customize script settings:

```lua
Config = {}

-- Script settings
Config.ScriptName = 'FiveMScript'
Config.Debug = false

-- Database settings
Config.Database = {
    TableName = 'fivemscript_data'
}

-- Client settings
Config.Client = {
    NotificationDuration = 5000
}

-- Server settings
Config.Server = {
    LogLevel = 'info'
}
```

---

## Generated with EnderDevelopment

This plugin was generated in minutes with [EnderDevelopment](https://enderdevelopment.com) — the AI platform that turns your ideas into working Minecraft plugins, Discord bots and FiveM scripts.

**Want your own?** [Generate this project on EnderDevelopment](https://dash.enderdevelopment.com?utm_source=github&utm_medium=readme&utm_campaign=fivem-script&utm_content=bottom) — describe it in one sentence and get the full source code.