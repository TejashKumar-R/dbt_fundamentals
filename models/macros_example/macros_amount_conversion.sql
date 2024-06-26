select *,
    {{ rupee_to_dollar_conversion('amount') }} AS Amount_in_USD
from raw.stripe.payment