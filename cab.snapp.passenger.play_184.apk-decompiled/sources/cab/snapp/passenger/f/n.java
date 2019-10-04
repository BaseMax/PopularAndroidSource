package cab.snapp.passenger.f;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ShortcutManager;
import android.net.Uri;
import android.os.Build;
import androidx.core.content.pm.ShortcutInfoCompat;
import androidx.core.content.pm.ShortcutManagerCompat;
import androidx.core.graphics.drawable.IconCompat;
import cab.snapp.passenger.activities.launcher.LauncherActivity;
import cab.snapp.passenger.data.models.FavoriteModel;
import cab.snapp.passenger.play.R;
import java.util.Collections;

public final class n {

    /* renamed from: a  reason: collision with root package name */
    private final String f583a = "snapp://shortcut/here/";

    /* renamed from: b  reason: collision with root package name */
    private Context f584b;

    public n(Context context) {
        this.f584b = context;
    }

    public final boolean createHomeScreenShortcut(FavoriteModel favoriteModel) {
        Intent intent = new Intent(this.f584b.getApplicationContext(), LauncherActivity.class);
        intent.setAction("android.intent.action.VIEW");
        intent.addFlags(67108864);
        intent.addFlags(268435456);
        intent.setData(Uri.parse("snapp://shortcut/here/" + favoriteModel.getFormattedAddress().getLat() + "," + favoriteModel.getFormattedAddress().getLng() + "," + favoriteModel.getId()));
        ShortcutInfoCompat.Builder builder = new ShortcutInfoCompat.Builder(this.f584b, String.valueOf(favoriteModel.getId()));
        StringBuilder sb = new StringBuilder();
        sb.append(this.f584b.getResources().getString(R.string.lets_go));
        sb.append(" ");
        sb.append(favoriteModel.getName());
        ShortcutInfoCompat build = builder.setLongLabel(sb.toString()).setIcon(IconCompat.createWithResource(this.f584b, R.drawable.ic_home_shortcut)).setIntent(intent).setShortLabel(favoriteModel.getName()).build();
        if (Build.VERSION.SDK_INT >= 25) {
            ShortcutManager shortcutManager = (ShortcutManager) this.f584b.getSystemService(ShortcutManager.class);
            if (shortcutManager.getDynamicShortcuts().size() > 3) {
                shortcutManager.removeDynamicShortcuts(Collections.singletonList(shortcutManager.getDynamicShortcuts().get(0).getId()));
            }
            shortcutManager.addDynamicShortcuts(Collections.singletonList(build.toShortcutInfo()));
        }
        if (ShortcutManagerCompat.isRequestPinShortcutSupported(this.f584b)) {
            ShortcutManagerCompat.requestPinShortcut(this.f584b, build, null);
        }
        return true;
    }

    public final boolean updateHomeScreenShortcut(FavoriteModel favoriteModel) {
        if (Build.VERSION.SDK_INT >= 25) {
            Intent intent = new Intent(this.f584b.getApplicationContext(), LauncherActivity.class);
            intent.setAction("android.intent.action.VIEW");
            intent.addFlags(67108864);
            intent.addFlags(268435456);
            intent.setData(Uri.parse("snapp://shortcut/here/" + favoriteModel.getFormattedAddress().getLat() + "," + favoriteModel.getFormattedAddress().getLng() + "," + favoriteModel.getId()));
            ShortcutInfoCompat.Builder builder = new ShortcutInfoCompat.Builder(this.f584b, String.valueOf(favoriteModel.getId()));
            StringBuilder sb = new StringBuilder();
            sb.append(this.f584b.getResources().getString(R.string.lets_go));
            sb.append(" ");
            sb.append(favoriteModel.getName());
            ((ShortcutManager) this.f584b.getSystemService(ShortcutManager.class)).updateShortcuts(Collections.singletonList(builder.setLongLabel(sb.toString()).setIcon(IconCompat.createWithResource(this.f584b, R.drawable.ic_home_shortcut)).setIntent(intent).setShortLabel(favoriteModel.getName()).build().toShortcutInfo()));
            return true;
        }
        removeHomeScreenShortcut(favoriteModel);
        createHomeScreenShortcut(favoriteModel);
        return false;
    }

    public final boolean removeHomeScreenShortcut(FavoriteModel favoriteModel) {
        if (Build.VERSION.SDK_INT >= 25) {
            ((ShortcutManager) this.f584b.getSystemService(ShortcutManager.class)).removeDynamicShortcuts(Collections.singletonList(String.valueOf(favoriteModel.getId())));
        } else {
            Intent intent = new Intent(this.f584b.getApplicationContext(), LauncherActivity.class);
            intent.setAction("android.intent.action.VIEW");
            intent.addFlags(67108864);
            intent.addFlags(268435456);
            intent.setData(Uri.parse("snapp://shortcut/here/" + favoriteModel.getFormattedAddress().getLat() + "," + favoriteModel.getFormattedAddress().getLng() + "," + favoriteModel.getId()));
            Intent intent2 = new Intent();
            intent2.putExtra("android.intent.extra.shortcut.INTENT", intent);
            intent2.putExtra("android.intent.extra.shortcut.NAME", this.f584b.getResources().getString(R.string.lets_go) + " " + favoriteModel.getName());
            intent2.setAction("com.android.launcher.action.UNINSTALL_SHORTCUT");
            this.f584b.getApplicationContext().sendBroadcast(intent2);
        }
        return true;
    }
}
