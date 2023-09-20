# Salesforce Email MFA with TOTP token for Experience Cloud Users

This repo contains code to generate TOTP codes and a custom Apex Flow action to enable use of that code from Flow. The repo also contains a Flow to be used as a Login Flow. The Flow generates a TOTP code, emails it to the current user and asks the user for the code. The user gets 3 attempts to supply the code, and if the user fails to do so the user is force logged out. If the code is correctly supplied the user is logged into Experience Cloud.

The key for the TOTP code is the user ID of the current user. A more secure approach should be employed.

The TOTP code is from the [time-based-one-time-password-algorithm-in-apex](https://github.com/renatoliveira/time-based-one-time-password-algorithm-in-apex) repo on Github (licensed under the MIT license).