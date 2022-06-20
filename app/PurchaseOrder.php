<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PurchaseOrder extends Model
{
    protected $table = "purchase_order";
    protected $fillable = ["product_id", "qty"];
}
