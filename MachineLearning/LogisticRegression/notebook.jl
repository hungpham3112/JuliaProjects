### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ a2bc13da-77d3-41b8-81ec-481d93a0bddb
md"""
# Logistic Regression with Neural networks
"""

# ╔═╡ 3a2fd874-786e-49ea-be00-f767b427642d


# ╔═╡ c3f1410b-072f-411f-98db-7112e8ecfa93
md"""
## Define activation function (sigmoid)
"""

# ╔═╡ 784d5a54-1e4a-4eb6-9e63-2b43378e86a8
function sigmoid(z)
	return 1.0 ./ (1.0 .+ exp(-z))
end

# ╔═╡ 53c95bf7-a650-4c89-8bda-7b45a5ad6b03
sigmoid(-0.5)

# ╔═╡ e0db60a3-8ae8-45e5-9b2d-f54fc7b24c2c


# ╔═╡ 93097054-17ae-4f05-8ced-447916beca5d


# ╔═╡ dc274327-544c-4bfd-9367-6003716a8afa


# ╔═╡ f42f9b36-717f-4d84-b551-5889855480e4


# ╔═╡ 80c4f441-4223-4a44-a559-b941da988e95


# ╔═╡ 2e8633c0-2c10-4140-9288-dbdf30335e50


# ╔═╡ 791db757-b865-4097-8727-db3839172111


# ╔═╡ 900d2930-a08f-4f3c-8fba-e6ca9813616d


# ╔═╡ 8101ee9a-582d-49ec-80fa-3838b4576dfd


# ╔═╡ 1beb43a7-19b8-4111-8a21-97e5720a4299


# ╔═╡ 3236f4a7-9d80-4f01-b4c5-c488d770f6fb


# ╔═╡ da58b607-9ea1-46b4-a4c1-62e0c1e95ea7


# ╔═╡ f66aa1cc-192d-4134-993b-56db70edef84


# ╔═╡ Cell order:
# ╟─a2bc13da-77d3-41b8-81ec-481d93a0bddb
# ╠═3a2fd874-786e-49ea-be00-f767b427642d
# ╟─c3f1410b-072f-411f-98db-7112e8ecfa93
# ╠═784d5a54-1e4a-4eb6-9e63-2b43378e86a8
# ╠═53c95bf7-a650-4c89-8bda-7b45a5ad6b03
# ╠═e0db60a3-8ae8-45e5-9b2d-f54fc7b24c2c
# ╠═93097054-17ae-4f05-8ced-447916beca5d
# ╠═dc274327-544c-4bfd-9367-6003716a8afa
# ╠═f42f9b36-717f-4d84-b551-5889855480e4
# ╠═80c4f441-4223-4a44-a559-b941da988e95
# ╠═2e8633c0-2c10-4140-9288-dbdf30335e50
# ╠═791db757-b865-4097-8727-db3839172111
# ╠═900d2930-a08f-4f3c-8fba-e6ca9813616d
# ╠═8101ee9a-582d-49ec-80fa-3838b4576dfd
# ╠═1beb43a7-19b8-4111-8a21-97e5720a4299
# ╠═3236f4a7-9d80-4f01-b4c5-c488d770f6fb
# ╠═da58b607-9ea1-46b4-a4c1-62e0c1e95ea7
# ╠═f66aa1cc-192d-4134-993b-56db70edef84
