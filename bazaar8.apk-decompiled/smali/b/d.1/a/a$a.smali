.class public final Lb/d/a/a$a;
.super Ljava/lang/Object;
.source "CustomTabsIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/d/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/content/Intent;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/os/Bundle;

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lb/d/a/a$a;-><init>(Lb/d/a/b;)V

    return-void
.end method

.method public constructor <init>(Lb/d/a/b;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lb/d/a/a$a;->a:Landroid/content/Intent;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lb/d/a/a$a;->b:Ljava/util/ArrayList;

    .line 5
    iput-object v0, p0, Lb/d/a/a$a;->c:Landroid/os/Bundle;

    .line 6
    iput-object v0, p0, Lb/d/a/a$a;->d:Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lb/d/a/a$a;->e:Z

    if-nez p1, :cond_1

    .line 8
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-nez p1, :cond_0

    const-string p1, "android.support.customtabs.extra.SESSION"

    .line 9
    invoke-static {v1, p1, v0}, Lb/i/a/j;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 10
    iget-object p1, p0, Lb/d/a/a$a;->a:Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-void

    .line 11
    :cond_0
    invoke-virtual {p1}, Lb/d/a/b;->a()Landroid/os/IBinder;

    throw v0

    .line 12
    :cond_1
    iget-object v1, p0, Lb/d/a/a$a;->a:Landroid/content/Intent;

    invoke-virtual {p1}, Lb/d/a/b;->b()Landroid/content/ComponentName;

    throw v0
.end method


# virtual methods
.method public a(I)Lb/d/a/a$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lb/d/a/a$a;->a:Landroid/content/Intent;

    const-string v1, "android.support.customtabs.extra.TOOLBAR_COLOR"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public a(Z)Lb/d/a/a$a;
    .locals 2

    .line 2
    iget-object v0, p0, Lb/d/a/a$a;->a:Landroid/content/Intent;

    const-string v1, "android.support.customtabs.extra.TITLE_VISIBILITY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public a()Lb/d/a/a;
    .locals 3

    .line 3
    iget-object v0, p0, Lb/d/a/a$a;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lb/d/a/a$a;->a:Landroid/content/Intent;

    const-string v2, "android.support.customtabs.extra.MENU_ITEMS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 5
    :cond_0
    iget-object v0, p0, Lb/d/a/a$a;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Lb/d/a/a$a;->a:Landroid/content/Intent;

    const-string v2, "android.support.customtabs.extra.TOOLBAR_ITEMS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 7
    :cond_1
    iget-object v0, p0, Lb/d/a/a$a;->a:Landroid/content/Intent;

    iget-boolean v1, p0, Lb/d/a/a$a;->e:Z

    const-string v2, "android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8
    new-instance v0, Lb/d/a/a;

    iget-object v1, p0, Lb/d/a/a$a;->a:Landroid/content/Intent;

    iget-object v2, p0, Lb/d/a/a$a;->c:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Lb/d/a/a;-><init>(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-object v0
.end method
