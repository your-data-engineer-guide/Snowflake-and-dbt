with payment as (
    select *
    from {{ ref("stg_stripe__payments") }}
    where status = 'success'
),

pivoted as (
    select
        order_id,
        {% set payment_methods = ['bank_transfer', 'coupon', 'credit_card', 'gift_card'] %}
        {%- for pm in payment_methods -%}
            sum(case when payment_method = '{{ pm }}' then amount else 0 end) as {{ pm }}_method 
            {%- if not loop.last -%},
            {% endif -%}
        {% endfor %}
    from payment
    group by 1
)

select * from pivoted
