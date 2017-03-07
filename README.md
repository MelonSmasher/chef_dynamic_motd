# dynamic_motd

Shows system statistics and a static message at logon.


```
This is a message!

                _  _____     _                       _       _
  ___ ___ _ __ | ||___  |   | |_ ___ _ __ ___  _ __ | | __ _| |_ ___
 / __/ _ \ '_ \| __| / /____| __/ _ \ '_ ` _ \| '_ \| |/ _` | __/ _ \
| (_|  __/ | | | |_ / /_____| ||  __/ | | | | | |_) | | (_| | ||  __/
 \___\___|_| |_|\__/_/       \__\___|_| |_| |_| .__/|_|\__,_|\__\___|
                                              |_|

Welcome to "CentOS Linux release 7.3.1611 (Core) " (3.10.0-514.10.2.el7.x86_64).

System information as of: Tue Mar  7 12:53:38 EST 2017

System Load:	0.00, 0.01, 0.05	System Uptime:		3 days 21 hours 9 min 45 sec
Memory Usage:	0.0%			Swap Usage:		0.0%
Usage On /:	48G			Access Rights on /:	(rw
Local Users:	1			Whoami:			root
Processes:	107

Interface	        MAC Address		IP Address
eno16777984		00:50:56:80:5b:11	192.168.0.2/24
```


## Usage

### dynamic_motd::default

Just include `dynamic_motd` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[dynamic_motd]"
  ]
}
```
## Attributes 

### Message

Static message to display with the system statistics

Default Value:

- `''`

Ruby usage:

```ruby
node['dynamic_motd']['message'] = 'This is a message!'
```

JSON usage:

```json
{
  "dynamic_motd": {
    "message": "This is a message!"
  }
}
```