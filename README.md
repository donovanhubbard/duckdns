# duckdns
A simple program to update your duckdns.org address. 

Just let this lightweight program run, ideally in a container, and it will POST regularly to duckdns at a specified interval.

## Arguments
| Name | Required | Description |
|----- | ------- | -----------|
| TOKEN | Yes | Your duckdns.org token |
| DOMAIN | Yes | Your duckdns.org sub-domain |
| INTERVAL_SECONDS | No | The number of seconds that the program should wait inbetween updating duckdns.org. By default it's 300 (or 5 minutes). |

