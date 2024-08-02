using OmikujiWorkflow
using Test

@testset "OmikujiWorkflow.jl" begin
    f = OmikujiWorkflow.get_omikuji()
    @test f in OmikujiWorkflow.OMIKUJI_LIST
end
