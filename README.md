# 1Password CLI Lab

Este laboratorio demuestra el uso de 1Password CLI para gestionar secretos desde Linux.

## Pasos realizados

1. Se instaló el CLI de 1Password (1Password CLI brings 1Password to your terminal.

Turn on the 1Password app integration and sign in to get started. Run
'op signin --help' to learn more.

For more help, read our documentation:
https://developer.1password.com/docs/cli

1Password CLI is built using open-source software. View our credits and
licenses:
https://downloads.1password.com/op/credits/stable/credits.html

Usage:  op [command] [flags]

Management Commands:
  account         Manage your locally configured 1Password accounts
  connect         Manage Connect server instances and tokens in your 1Password account
  document        Perform CRUD operations on Document items in your vaults
  events-api      Manage Events API integrations in your 1Password account
  group           Manage the groups in your 1Password account
  item            Perform CRUD operations on the 1Password items in your vaults
  plugin          Manage the shell plugins you use to authenticate third-party CLIs
  service-account Manage service accounts
  user            Manage users within this 1Password account
  vault           Manage permissions and perform CRUD operations on your 1Password vaults

Commands:
  completion      Generate shell completion information
  inject          Inject secrets into a config file
  read            Read a secret reference
  run             Pass secrets as environment variables to a process
  signin          Sign in to a 1Password account
  signout         Sign out of a 1Password account
  update          Check for and download updates.
  whoami          Get information about a signed-in account

Global Flags:
      --account account    Select the account to execute the command by
                           account shorthand, sign-in address, account
                           ID, or user ID. For a list of available
                           accounts, run 'op account list'. Can be set as
                           the OP_ACCOUNT environment variable.
      --cache              Store and use cached information. Caching is
                           enabled by default on UNIX-like systems.
                           Caching is not available on Windows. Options:
                           true, false. Can also be set with the OP_CACHE
                           environment variable. (default true)
      --config directory   Use this configuration directory.
      --debug              Enable debug mode. Can also be enabled by
                           setting the OP_DEBUG environment variable to true.
      --encoding type      Use this character encoding type. Default:
                           UTF-8. Supported: SHIFT_JIS, gbk.
      --format string      Use this output format. Can be
                           'human-readable' or 'json'. Can be set as the
                           OP_FORMAT environment variable. (default
                           "human-readable")
  -h, --help               Get help for op.
      --iso-timestamps     Format timestamps according to ISO 8601 / RFC
                           3339. Can be set as the OP_ISO_TIMESTAMPS
                           environment variable.
      --no-color           Print output without color.
      --session token      Authenticate with this session token.
                           1Password CLI outputs session tokens for
                           successful 'op signin' commands when 1Password
                           app integration is no
