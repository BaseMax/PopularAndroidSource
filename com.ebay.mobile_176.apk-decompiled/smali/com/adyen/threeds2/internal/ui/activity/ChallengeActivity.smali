.class public Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;
.super Lcom/adyen/threeds2/internal/ui/activity/b;

# interfaces
.implements Lcom/adyen/threeds2/internal/ui/b/b;
.implements Lcom/adyen/threeds2/internal/ui/b/c;
.implements Lcom/adyen/threeds2/internal/ui/b/d;
.implements Lcom/adyen/threeds2/internal/ui/b/e;


# static fields
.field static final a:Ljava/lang/String; = "ChallengeActivity"

.field static final b:Ljava/lang/String;

.field static final c:Ljava/lang/String;

.field static final d:Ljava/lang/String;

.field static final e:Ljava/lang/String;

.field static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;

.field private static final h:Ljava/lang/String;


# instance fields
.field private i:Lcom/adyen/threeds2/internal/ui/activity/a;

.field private j:Lcom/adyen/threeds2/internal/a/a/b/a;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x360

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->b:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x361

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->c:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x362

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->d:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x363

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->e:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x364

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->f:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x365

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->g:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x366

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/ui/activity/b;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    sget-object p0, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/adyen/threeds2/internal/a/a/b/a;)Landroid/content/Intent;
    .locals 2

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    sget-object p0, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    sget-object p0, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    .line 245
    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->setIntent(Landroid/content/Intent;)V

    .line 247
    sget-object v0, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object p1, p0, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->i:Lcom/adyen/threeds2/internal/ui/activity/a;

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/ui/activity/a;->b()V

    goto :goto_0

    .line 249
    :cond_0
    sget-object v0, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    iget-object p1, p0, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->i:Lcom/adyen/threeds2/internal/ui/activity/a;

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/ui/activity/a;->c()V

    goto :goto_0

    .line 251
    :cond_1
    sget-object v0, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    sget-object v0, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/adyen/threeds2/internal/a/a/b/a;

    iput-object p1, p0, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->j:Lcom/adyen/threeds2/internal/a/a/b/a;

    .line 253
    iget-object p1, p0, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->i:Lcom/adyen/threeds2/internal/ui/activity/a;

    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->j:Lcom/adyen/threeds2/internal/a/a/b/a;

    invoke-virtual {p1, v0}, Lcom/adyen/threeds2/internal/ui/activity/a;->a(Lcom/adyen/threeds2/internal/a/a/b/a;)V

    goto :goto_0

    .line 254
    :cond_2
    sget-object v0, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 255
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->finish()V

    :goto_0
    return-void

    .line 257
    :cond_3
    sget-object p1, Lcom/adyen/threeds2/internal/e/c;->CHALLENGE_PRESENTATION_FAILURE:Lcom/adyen/threeds2/internal/e/c;

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/e/c;->a()Lcom/adyen/threeds2/exception/SDKRuntimeException;

    move-result-object p1

    throw p1
.end method

.method private a(Lcom/adyen/threeds2/internal/a/a/a/c;)V
    .locals 1

    .line 280
    invoke-static {}, Lcom/adyen/threeds2/internal/f;->a()Lcom/adyen/threeds2/internal/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/internal/f;->a(Lcom/adyen/threeds2/internal/a/a/a/c;)V

    return-void
.end method

.method private a(Lcom/adyen/threeds2/internal/ui/b/a;)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->i:Lcom/adyen/threeds2/internal/ui/activity/a;

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/ui/activity/a;->e()Lcom/adyen/threeds2/internal/ui/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0, p1}, Lcom/adyen/threeds2/internal/ui/c/a;->setChallengeListener(Lcom/adyen/threeds2/internal/ui/b/a;)V

    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 1

    .line 107
    invoke-static {}, Lcom/adyen/threeds2/internal/ui/activity/a;->a()Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    sget-object p0, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    sget-object p0, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private g()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->i:Lcom/adyen/threeds2/internal/ui/activity/a;

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/ui/activity/a;->e()Lcom/adyen/threeds2/internal/ui/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 275
    invoke-virtual {v0, v1}, Lcom/adyen/threeds2/internal/ui/c/a;->setChallengeListener(Lcom/adyen/threeds2/internal/ui/b/a;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 2

    .line 212
    new-instance v0, Landroid/content/Intent;

    const/16 v1, 0x35e

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    .line 215
    iput-boolean p1, p0, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->k:Z

    .line 216
    invoke-virtual {p0, v0}, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 218
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x35f

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 202
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/a/i;

    invoke-direct {v0, p1}, Lcom/adyen/threeds2/internal/a/a/a/i;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->a(Lcom/adyen/threeds2/internal/a/a/a/c;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 207
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/a/h;

    invoke-direct {v0, p1}, Lcom/adyen/threeds2/internal/a/a/a/h;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->a(Lcom/adyen/threeds2/internal/a/a/a/c;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 229
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/a/e;

    invoke-direct {v0, p1}, Lcom/adyen/threeds2/internal/a/a/a/e;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->a(Lcom/adyen/threeds2/internal/a/a/a/c;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 192
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/a/g;

    invoke-direct {v0}, Lcom/adyen/threeds2/internal/a/a/a/g;-><init>()V

    invoke-direct {p0, v0}, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->a(Lcom/adyen/threeds2/internal/a/a/a/c;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 197
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/a/a;

    invoke-direct {v0}, Lcom/adyen/threeds2/internal/a/a/a/a;-><init>()V

    invoke-direct {p0, v0}, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->a(Lcom/adyen/threeds2/internal/a/a/a/c;)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 224
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/a/f;

    invoke-direct {v0}, Lcom/adyen/threeds2/internal/a/a/a/f;-><init>()V

    invoke-direct {p0, v0}, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->a(Lcom/adyen/threeds2/internal/a/a/a/c;)V

    return-void
.end method

.method f()Lcom/adyen/threeds2/internal/h;
    .locals 1

    .line 234
    sget-object v0, Lcom/adyen/threeds2/internal/h;->a:Lcom/adyen/threeds2/internal/h;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    .line 180
    invoke-super {p0}, Lcom/adyen/threeds2/internal/ui/activity/b;->onBackPressed()V

    .line 182
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->d()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 127
    invoke-super {p0, p1}, Lcom/adyen/threeds2/internal/ui/activity/b;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    .line 133
    sget-object v0, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 134
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->finish()V

    goto :goto_0

    .line 137
    :cond_0
    sget-object v0, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->g:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->k:Z

    .line 141
    :cond_1
    :goto_0
    new-instance p1, Lcom/adyen/threeds2/internal/ui/activity/a;

    invoke-direct {p1, p0, p0}, Lcom/adyen/threeds2/internal/ui/activity/a;-><init>(Landroid/app/Activity;Lcom/adyen/threeds2/internal/ui/b/a;)V

    iput-object p1, p0, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->i:Lcom/adyen/threeds2/internal/ui/activity/a;

    .line 143
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 173
    invoke-super {p0}, Lcom/adyen/threeds2/internal/ui/activity/b;->onDestroy()V

    .line 175
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->i:Lcom/adyen/threeds2/internal/ui/activity/a;

    invoke-virtual {v0}, Lcom/adyen/threeds2/internal/ui/activity/a;->d()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 120
    invoke-super {p0, p1}, Lcom/adyen/threeds2/internal/ui/activity/b;->onNewIntent(Landroid/content/Intent;)V

    .line 122
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 159
    invoke-super {p0}, Lcom/adyen/threeds2/internal/ui/activity/b;->onPause()V

    .line 161
    invoke-direct {p0}, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->g()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 148
    invoke-super {p0}, Lcom/adyen/threeds2/internal/ui/activity/b;->onResume()V

    .line 150
    invoke-direct {p0, p0}, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->a(Lcom/adyen/threeds2/internal/ui/b/a;)V

    .line 152
    iget-boolean v0, p0, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->j:Lcom/adyen/threeds2/internal/a/a/b/a;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->i:Lcom/adyen/threeds2/internal/ui/activity/a;

    iget-object v1, p0, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->j:Lcom/adyen/threeds2/internal/a/a/b/a;

    invoke-virtual {v0, v1}, Lcom/adyen/threeds2/internal/ui/activity/a;->b(Lcom/adyen/threeds2/internal/a/a/b/a;)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 112
    invoke-super {p0, p1}, Lcom/adyen/threeds2/internal/ui/activity/b;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 114
    sget-object v0, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->g:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->k:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 115
    sget-object v0, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->h:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 166
    invoke-super {p0}, Lcom/adyen/threeds2/internal/ui/activity/b;->onStop()V

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lcom/adyen/threeds2/internal/ui/activity/ChallengeActivity;->k:Z

    return-void
.end method
