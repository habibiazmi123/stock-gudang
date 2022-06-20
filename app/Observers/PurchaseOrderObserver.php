<?php

namespace App\Observers;

use App\ProductStock;
use App\PurchaseOrder;

class PurchaseOrderObserver
{
    public function created(PurchaseOrder $purchaseOrder)
    {
        ProductStock::create([
            "product_id" => $purchaseOrder->product_id,
            "type" => "in",
            "qty" => $purchaseOrder->qty
        ]);
    }
}
