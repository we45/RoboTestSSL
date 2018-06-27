## RoboTestSSL
 Robot Framework Library for TestSSL


**Supports Python 2.7.x for now**

### Install Instructions
* You need docker to run this program
* Pull the TestSSL docker image: `docker pull we45/testssl`


### Keywords

`run testssl against target`

`| run testssl against target  | target  | results path `

* target: Domain or IP of the Target.
* results path: where your results will be stored. An `.html` file , `.xml` file and  `.json` files are generated as outputs
