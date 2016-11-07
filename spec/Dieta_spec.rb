require "spec_helper"
require "./lib/dieta.rb"

describe Dieta do 

	context "Menu de dieta" do

		before :each do
			@menu = Dieta::Dieta.new('DESAYUNO','15%',[['Manzana','1 unidad','60gr'],['Pera','1 unidad','60gr']],'400','10','20','10')
		end

		it 'Debe existir un título' do
			expect(@menu.t).to eq('DESAYUNO')
		end
		
		it 'Debe existir un porcentaje de ingesta diaria' do
			expect(@menu.ing).to eq('15%')
		end

		it 'Debe mostrar un conjunto de platos' do 
			expect(@menu.pl).to eq([['Manzana','1 unidad','60gr'],['Pera','1 unidad','60gr']])
		end

		it 'Debe mostrar kcal' do
			expect(@menu.v).to eq('400')
		end

		it 'Debe mostrar proteinas' do
			expect(@menu.p).to eq('10')
		end
	
		it 'Debe mostrar grasas' do
			expect(@menu.g).to eq('20')
		end

		it 'Debe mostrar hidratos de carbono' do
			expect(@menu.h).to eq('10')
		end

		it 'Debe mostrar un plato' do
			expect(@menu.get_plato(1)).to eq(['Pera','1 unidad','60gr'])
		end

		it 'Debe mostrar todo el menu' do
			expect(@menu.to_s).to eq("DESAYUNO (15%)\n- Manzana, 1 unidad, 60gr\n- Pera, 1 unidad, 60gr\nV.C.T | %\t400 kcal | 10% - 20% - 10%\n")
		end
	end
end
