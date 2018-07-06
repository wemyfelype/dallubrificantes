module ApplicationHelper
    
    def number_to_currency_br(number, symbol = "")
      number_to_currency(number, :unit => symbol+" ", :separator => ",", :delimiter => ".")
    end
    
    def product_value_active(product_values)
        
        active_pv = nil
        
        product_values.each do |value|
            if value.fl_status == "A"
                active_pv = value
            end 
        end 

        div_vl_purchase = content_tag :div, class: "form-group col-md-2" do
            content_tag(:label, "Valor compra").html_safe +
            content_tag(:div, class: "input-group") do
                content_tag(:div, class: "input-group-prepend") do
                    content_tag :span, "R$", class: "input-group-text"
                end +
                text_field_tag(:vl_purchase_uni, number_to_currency_br(!active_pv.nil? ? active_pv.vl_purchase_uni : 0),class: "form-control text-right", disabled: true, "data-mask-reverse": true , "data-mask": "000.000.000,00", )
            end
        end
        
        div_vl_sale = content_tag :div, class: "form-group col-md-2" do
            content_tag(:label, "Valor venda").html_safe +
            content_tag(:div, class: "input-group") do
                content_tag(:div, class: "input-group-prepend") do
                    content_tag :span, "R$", class: "input-group-text"
                end +
                text_field_tag(:vl_sale_uni, number_to_currency_br(!active_pv.nil? ? active_pv.vl_sale_uni : 0), class: "form-control text-right", disabled: true, "data-mask-reverse": true , "data-mask": "000.000.000,00", )
            end
        end

        div_vl_purchase.concat(div_vl_sale)
        
    end

end
