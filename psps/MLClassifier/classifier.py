import turicreate as turi

url = "dataset/"

data = turi.image_analysis.load_images(url)

data["cleanType"] = data["path"].apply(lambda path: "Handwash30" if "handwash30" in path else "Donotwash")

data.save("wash.sframe")

data.explore()

dataBuffer = turi.SFrame("wash.sframe")
trainingBuffers, testingBuffers = dataBuffer.random_split(0.9)

model = turi.image_classifier.create(trainingBuffers, target="cleanType", model="squeezenet_v1.1")

evaluations = model.evaluate(testingBuffers)
print evaluations["accuracy"]

model.save("wash.model")
model.export_coreml("wash.mlmodel")
