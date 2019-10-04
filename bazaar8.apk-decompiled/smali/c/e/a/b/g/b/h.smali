.class public final Lc/e/a/b/g/b/h;
.super Lc/e/a/b/b/a/a/c;
.source "com.google.android.gms:play-services-auth-api-phone@@17.1.0"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/e/a/b/b/a/a/c;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public final d()Lc/e/a/b/j/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/e/a/b/j/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/e/a/b/g/b/j;

    invoke-direct {v0, p0}, Lc/e/a/b/g/b/j;-><init>(Lc/e/a/b/g/b/h;)V

    invoke-virtual {p0, v0}, Lc/e/a/b/d/a/c;->a(Lc/e/a/b/d/a/a/j;)Lc/e/a/b/j/g;

    move-result-object v0

    return-object v0
.end method
