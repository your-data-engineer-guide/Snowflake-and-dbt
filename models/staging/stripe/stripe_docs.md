{% docs payment_status %}
	
One of the following values: 

| status  | definition                 |
|---------|----------------------------|
| fail    | The payment has failed.    |
| success | The payment has succeeded. |

{% enddocs %}

{% docs payment_method %}

One of the following values:

| status        | definition                             |
|---------------|----------------------------------------|
| coupon        | The customer paid using a coupon.      |
| credit_card   | The customer paid using a credit card. |
| bank_transfer | The customer paid by bank transfer.    |
| gift_card     | The customer paid using a gift card.   |

{% enddocs %}