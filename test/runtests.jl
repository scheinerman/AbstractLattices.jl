using Test
using AbstractLattices


@testset "Defining meanings" begin
    function (∨)(a::Number, b::Number)
        return max(a, b)
    end

    function (∧)(a::Number, b::Number)
        return min(a, b)
    end

    @test 5 ∧ 10 == 5
    @test 5 ∨ 10 == 10

    @test wedge(3) == vee(3)

end

@testset "Check Bool" begin
    @test true ∨ false 
    @test true ∧ true
end
