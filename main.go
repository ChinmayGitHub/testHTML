package main


import (
	"fmt"
    "net/http"
    "io/ioutil"
)
 
func main() {

	var PTransport = &http.Transport{Proxy: http.ProxyFromEnvironment}
	client := http.Client{Transport: PTransport}
	req, err := http.NewRequest("GET", "https://jsonplaceholder.typicode.com/todos/1", nil)
	req.Header.Add("If-None-Match", `some value`)
	resp, err := client.Do(req)
	    if err != nil {
        panic(err) 
    }
    defer resp.Body.Close()
 
    bodyBytes, err := ioutil.ReadAll(resp.Body)
    if err != nil {
        panic(err)
    }
 
    bodyString := string(bodyBytes)
    fmt.Printf("GET Response = %s \n", string(bodyString))


}
