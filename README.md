# Visual Studio Code Coding Tracker Server

Docker container to run :
> [Visual Studio Code Coding Tracker Server (github repo)](https://github.com/hangxingliu/vscode-coding-tracker-server) 

VSCode Coding Tracker extension server side program.    

> Links:  
> [Extension side Github repo](https://github.com/hangxingliu/vscode-coding-tracker)   
> [VSCode extensions marketplace](https://marketplace.visualstudio.com/items?itemName=hangxingliu.vscode-coding-tracker)   
>
> Give me coffee for coding better via [Paypal](https://www.paypal.me/hangxingliu)   
> *Your support encourage me to make my vscode extensions better and better! (and add more and more features)*


## Usage

```sh
$ docker run -p 10345 stayfi/vscoding-tracker-server
```

Docker-compose :

Volumes to select a database path and to add a conf path where is the tockens file

Command to use the token file

```sh
    volumes:
      - "/home/server/vscoding-tracker-server/database:/app/database"
      - "/home/server/vscoding-tracker-server/conf:/app/conf"
    command: "node app --token-file /app/conf/coding-tracker-tokens.json"
```

Token file example 1:

``` json
{
	"adminToken": [{
		"remark": "Admin token for leader",
		"token": "john-is-a-admin"
	}],
	"viewReportToken": [{
		"remark": "This is a token for view report",
		"token": "123456"
	}],
	"uploadToken": [{
		"remark": "Token for Mike",
		"token": "mike-has-a-cat",
		"computerId": "MikeComputer"
	}, {
		"remark": "Token for Nick with project A",
		"token": "nick-works-hard-in-project-A",
		"computerId": ["NickComputer", "NickLaptop"],
		"project": "projectA"
	}, {
		"remark": "Token for leader",
		"token": "a-token-can-upload-everything"
	}]
}
```
VScode Extension:

> [VSCode extensions marketplace](https://marketplace.visualstudio.com/items?itemName=hangxingliu.vscode-coding-tracker)   


## Credits
Stayfi B. - <stayfi@gmail.com>

## Versions
(Major.Minor[.Fix])

#### 1.0
First version, working.

## License

[GPL-3.0](LICENSE)

[vdolgishev]: https://github.com/vdolgishev