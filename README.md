# Forager Resource Pack

This repository contains the Forager Minecraft server resource pack assets and instructions for packaging and installing the pack.

**Contents:**
- `pack.mcmeta` — metadata describing the pack.
- `pack.png` — optional thumbnail shown in the resource pack menu.
- `assets/` — the resource pack asset hierarchy (textures, models, sounds, etc.).

**Overview**

This README explains how to prepare, zip, host, and install the resource pack for both clients and servers. It also includes commands for generating a SHA-1 hash required by Minecraft servers.

**pack.mcmeta**

Your pack must include a valid `pack.mcmeta` in the root of the pack. Example minimal `pack.mcmeta`:

```json
{
	"pack": {
		"pack_format": <pack_format_for_your_minecraft_version>,
		"description": "Forager Resource Pack"
	}
}
```

- Replace `<pack_format_for_your_minecraft_version>` with the appropriate number for the Minecraft version you target (consult the Minecraft wiki/resource pack docs).

Preparing the ZIP
-----------------

1. Verify the root of the resource pack contains `pack.mcmeta` and the `assets/` folder.
2. From the directory that contains `pack.mcmeta` and `assets/`, create a zip where the root of the zip matches the pack root (i.e., `pack.mcmeta` is at the zip root).

Linux / macOS (using `zip`):

```bash
# run this from inside the resource pack folder (where pack.mcmeta is)
zip -r ../Forager-Resourcepack.zip . -x "*.DS_Store"
```

Windows PowerShell (using `Compress-Archive`):

```powershell
# run from inside the resource pack folder
Compress-Archive -Path * -DestinationPath ..\Forager-Resourcepack.zip
```

Notes:
- Ensure the zip does not add an extra top-level folder. When opened, `pack.mcmeta` should be at the top level inside the zip.
- Avoid including system files like `.DS_Store` or `Thumbs.db`.

Generating a SHA-1 Hash (for servers)
------------------------------------

If you plan to set the pack via `server.properties` you should provide a SHA-1 hash of the zip so clients validate the download.

Linux / macOS:

```bash
sha1sum Forager-Resourcepack.zip | awk '{print $1}'
# or
shasum -a 1 Forager-Resourcepack.zip | awk '{print $1}'
```

Windows (Command Prompt):

```cmd
certutil -hashfile Forager-Resourcepack.zip SHA1
```

Windows (PowerShell):

```powershell
Get-FileHash .\Forager-Resourcepack.zip -Algorithm SHA1 | Select-Object -ExpandProperty Hash
```

Hosting the Pack
----------------

Minecraft clients need an HTTPS (preferred) or HTTP direct download URL to the zip. Common hosting options:
- GitHub Releases (recommended for versioned static files)
- Static hosting (Netlify, Vercel, S3 + CloudFront)
- Your own web server

Make sure the URL points directly to the raw `.zip` file (no HTML wrapper) and is reachable by players.

Server Configuration
--------------------

Add the following to your `server.properties` (replace the placeholders):

```
resource-pack=<DIRECT_HTTPS_URL_TO_FORAGER-RESOURCEPACK.zip>
resource-pack-sha1=<SHA1_HASH_OF_ZIP>
```

- `resource-pack` should be a fully-qualified URL (https://...).
- `resource-pack-sha1` is optional but recommended. It is the SHA-1 hash generated above.

Testing Locally (quick)
-----------------------

You can quickly test hosting on your machine by starting a simple HTTP server from the directory that contains the zip:

```bash
python3 -m http.server 8000
# then use http://<your-ip-or-localhost>:8000/Forager-Resourcepack.zip as the resource-pack URL
```

When testing locally, clients must be able to reach your machine. For public testing, use a public hosting solution.

Installing on a Client
----------------------

1. Copy the produced `Forager-Resourcepack.zip` into the Minecraft resourcepacks folder:

	 - Linux: `~/.minecraft/resourcepacks/`
	 - Windows: `%appdata%\\.minecraft\\resourcepacks\\`
	 - macOS: `~/Library/Application Support/minecraft/resourcepacks/`

2. In Minecraft, open `Options` → `Resource Packs` → `Open Pack Folder` (if needed), paste the zip, then select the pack in the in-game menu.

Troubleshooting
---------------
- If the pack doesn't appear in-game, ensure `pack.mcmeta` is valid JSON and uses the correct `pack_format`.
- Check the zip root—`pack.mcmeta` must be at archive root, not inside a nested folder.
- If the server refuses client downloads, confirm the URL is accessible and that the `resource-pack-sha1` matches the zip's SHA-1.
- Use browser download or `curl -I <URL>` to confirm the host serves the zip with correct `Content-Type`/headers.

Versioning and Releases
-----------------------
Keep the pack versioned (e.g., `Forager-Resourcepack-v1.2.zip`) and update the `pack.mcmeta` description or maintain a `CHANGELOG.md` so players know what's changed.

Credits & License
-----------------
Include credits and the license for assets in a `LICENSE` or `CREDITS.md` file as appropriate.

If you want, I can also:
- Add a `pack.png` thumbnail template,
- Add a sample `pack.mcmeta` with the correct `pack_format` for a target Minecraft version,
- Or create a small script to produce the zip and SHA-1 automatically.

---

Project maintained by the Forager server team.

