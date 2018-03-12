# docker-render-template
Docker container for rendering templates with environment variables.


#### Usage

Create a template file and use environment variables to assign values.

test.template:
```
test = {{ TEST_MESSAGE }}
```

Command:
```
cat test.template | docker run -i --env "TEST_MESSAGE=testing" --rm docker-render-template > test.render
```

Result:
```
test = testing
```
