class TaxController < ApplicationController
  include SlabModule
   def new
     respond_to do |format|
      format.html # new.html.erb
      end
   end
  
  def calculate_tax
   @s =  SlabModule.retrieve_slabs
    t = params[:tax]
    c = params[:cess]
    @s.each do |slab|
    if t.to_i >= slab.slab_from.to_i &&  t.to_i < slab.slab_to.to_i
    percentage = slab.slab_percentage
    min_amount = slab.min_tax
    extra_amount = t.to_i - slab.slab_from.to_i
    @tax_slab = ((extra_amount/100)*percentage.to_i)+min_amount.to_i + ((c.to_i*extra_amount)/100)
    end
  end
    @t_s = @tax_slab
  end
  
end