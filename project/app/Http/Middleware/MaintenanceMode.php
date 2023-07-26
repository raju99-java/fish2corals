<?php

namespace App\Http\Middleware;
use App\Models\Generalsetting;
use Closure;

class MaintenanceMode
{
    public function handle($request, Closure $next)

    {
        // dd('ak');
        $gs = Generalsetting::find(1);
        

            if($gs->is_maintain == 1) {
// dd($gs);
                    return redirect()->route('front-maintenance');

            }


            return $next($request);

    }
}
