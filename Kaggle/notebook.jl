### A Pluto.jl notebook ###
# v0.19.19

using Markdown
using InteractiveUtils

# ╔═╡ ea174560-8da4-11ed-2167-771ddfbc8d15
begin
	using Pkg
	Pkg.add(["Flux", "DataFrames", "CSV", "MLDatasets"])
end

# ╔═╡ 645a6408-79dc-4f38-8798-340aab0c410e
begin
	using Flux: train!, onehotbatch
	using DataFrames, CSV, MLDatasets
end

# ╔═╡ 163cbe7f-cf51-423b-b62b-91001e4df80b
CSV.read("..//Kaggle//train.csv", DataFrame)

# ╔═╡ 537c9e68-31be-46f3-89c1-838b49d8d166
begin
	# Load training data (images, labels)
	x_train, y_train = MLDatasets.MNIST.traindata()
	# Load test data (images, labels)
	x_test, y_test = MLDatasets.MNIST.testdata()
	# Convert grayscale to float
	x_train = Float32.(x_train)
	# Create labels batch
	y_train = onehotbatch(y_train, 0:9)
end

# ╔═╡ Cell order:
# ╠═ea174560-8da4-11ed-2167-771ddfbc8d15
# ╠═645a6408-79dc-4f38-8798-340aab0c410e
# ╠═163cbe7f-cf51-423b-b62b-91001e4df80b
# ╠═537c9e68-31be-46f3-89c1-838b49d8d166
