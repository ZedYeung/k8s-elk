import glob
import requests
import json

elassticsearch_url = "http://192.168.99.100:30200"

for template_file in glob.glob("*.json"):
    with open(template_file) as t:
        j = json.load(t)

    template = template_file.split(".")[0]
    r = requests.put("{es_url}/_template/{template}".format(
        es_url=elassticsearch_url, template=template), json=j)

    print(r.json())
