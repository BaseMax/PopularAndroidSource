.class public Landroidx/appcompat/app/AppCompatDelegateImpl$f;
.super Landroidx/appcompat/app/AppCompatDelegateImpl$e;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field public final c:Lb/b/a/I;

.field public final synthetic d:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Lb/b/a/I;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$f;->d:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$e;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    .line 2
    iput-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$f;->c:Lb/b/a/I;

    return-void
.end method


# virtual methods
.method public b()Landroid/content/IntentFilter;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_SET"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_TICK"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$f;->c:Lb/b/a/I;

    invoke-virtual {v0}, Lb/b/a/I;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$f;->d:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->k()Z

    return-void
.end method
