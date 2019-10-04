package cab.snapp.passenger.e.b;

import android.app.Application;
import cab.snapp.passenger.f.b.b.c;
import cab.snapp.passenger.f.o;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;

@Module
public final class a {
    @Singleton
    @Provides
    public final o provideShowcaseHelper() {
        return new o();
    }

    @Singleton
    @Provides
    public final c provideReportHelper(Application application) {
        return new c(application);
    }
}
