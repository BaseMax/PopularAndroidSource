.class public final synthetic Lc/e/a/b/g/f/Aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final a:Lc/e/a/b/g/f/za;


# direct methods
.method public constructor <init>(Lc/e/a/b/g/f/za;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e/a/b/g/f/Aa;->a:Lc/e/a/b/g/f/za;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/e/a/b/g/f/Aa;->a:Lc/e/a/b/g/f/za;

    invoke-virtual {v0, p1, p2}, Lc/e/a/b/g/f/za;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
