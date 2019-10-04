package cab.snapp.arch.protocol;

import android.os.Bundle;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.navigation.NavController;
import androidx.navigation.NavOptions;
import androidx.navigation.Navigator;
import cab.snapp.arch.protocol.BaseInteractor;
import java.lang.ref.SoftReference;

public abstract class BaseRouter<I extends BaseInteractor> {
    protected FragmentManager fragmentManager;
    protected SoftReference<I> interactor;
    protected NavController navigationController;

    public I getInteractor() {
        if (this.interactor.get() != null) {
            return (BaseInteractor) this.interactor.get();
        }
        return null;
    }

    public void setInteractor(I i) {
        this.interactor = new SoftReference<>(i);
    }

    public FragmentManager getFragmentManager() {
        return this.fragmentManager;
    }

    public void setFragmentManager(FragmentManager fragmentManager2) {
        this.fragmentManager = fragmentManager2;
    }

    public NavController getNavigationController() {
        return this.navigationController;
    }

    public void setNavigationController(NavController navController) {
        this.navigationController = navController;
    }

    public void navigateTo(int i) {
        navigateTo(i, null);
    }

    public void navigateTo(int i, Bundle bundle) {
        navigateTo(i, bundle, null, null);
    }

    public void navigateTo(int i, Bundle bundle, Navigator.Extras extras, NavOptions navOptions) {
        if (isActivityVisible() && getNavigationController() != null) {
            try {
                getNavigationController().navigate(i, bundle, navOptions, extras);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public FragmentTransaction loadChildController(int i, BaseController baseController) {
        return loadChildController(i, baseController, true);
    }

    public FragmentTransaction loadChildController(int i, BaseController baseController, boolean z) {
        FragmentTransaction fragmentTransaction;
        if (this.fragmentManager != null) {
            FragmentTransaction fragmentTransaction2 = null;
            if (!isActivityVisible()) {
                return null;
            }
            if (z) {
                try {
                    fragmentTransaction = this.fragmentManager.beginTransaction().replace(i, baseController).addToBackStack(null);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else {
                fragmentTransaction = this.fragmentManager.beginTransaction().replace(i, baseController);
            }
            fragmentTransaction2 = fragmentTransaction;
            if (fragmentTransaction2 != null) {
                fragmentTransaction2.commit();
            }
            return fragmentTransaction2;
        }
        throw new IllegalStateException("fragment manager can't be null");
    }

    public boolean navigateChildUp() {
        boolean z = false;
        try {
            if (isActivityVisible() && this.fragmentManager != null && this.fragmentManager.popBackStackImmediate()) {
                z = true;
            }
            return z;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public void navigateUp() {
        if (isActivityVisible() && getNavigationController() != null) {
            try {
                getNavigationController().navigateUp();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public boolean isActivityVisible() {
        return getInteractor() != null && (getInteractor().getActivity() instanceof BaseArchActivity) && ((BaseArchActivity) getInteractor().getActivity()).isVisible();
    }
}
