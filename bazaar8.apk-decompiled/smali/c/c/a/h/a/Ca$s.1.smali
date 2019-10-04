.class public final Lc/c/a/h/a/Ca$s;
.super Lc/c/a/h/a/a$a;
.source "DaggerAppComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/h/a/Ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "s"
.end annotation


# instance fields
.field public a:Lc/c/a/h/b/i;

.field public b:Lc/c/a/h/b/o;

.field public c:Lc/c/a/h/b/Ya;

.field public d:Lc/c/a/h/b/D;

.field public e:Lc/c/a/h/b/mb;

.field public f:Lc/c/a/h/b/Wa;

.field public g:Lc/c/a/h/b/a;

.field public h:Lcom/farsitel/bazaar/app/BazaarApp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/c/a/h/a/a$a;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lc/c/a/h/a/l;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lc/c/a/h/a/Ca$s;-><init>()V

    return-void
.end method

.method public static synthetic a(Lc/c/a/h/a/Ca$s;)Lcom/farsitel/bazaar/app/BazaarApp;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/h/a/Ca$s;->h:Lcom/farsitel/bazaar/app/BazaarApp;

    return-object p0
.end method

.method public static synthetic b(Lc/c/a/h/a/Ca$s;)Lc/c/a/h/b/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/h/a/Ca$s;->a:Lc/c/a/h/b/i;

    return-object p0
.end method

.method public static synthetic c(Lc/c/a/h/a/Ca$s;)Lc/c/a/h/b/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/h/a/Ca$s;->b:Lc/c/a/h/b/o;

    return-object p0
.end method

.method public static synthetic d(Lc/c/a/h/a/Ca$s;)Lc/c/a/h/b/Ya;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/h/a/Ca$s;->c:Lc/c/a/h/b/Ya;

    return-object p0
.end method

.method public static synthetic e(Lc/c/a/h/a/Ca$s;)Lc/c/a/h/b/D;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/h/a/Ca$s;->d:Lc/c/a/h/b/D;

    return-object p0
.end method

.method public static synthetic f(Lc/c/a/h/a/Ca$s;)Lc/c/a/h/b/mb;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/h/a/Ca$s;->e:Lc/c/a/h/b/mb;

    return-object p0
.end method

.method public static synthetic g(Lc/c/a/h/a/Ca$s;)Lc/c/a/h/b/Wa;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/h/a/Ca$s;->f:Lc/c/a/h/b/Wa;

    return-object p0
.end method

.method public static synthetic h(Lc/c/a/h/a/Ca$s;)Lc/c/a/h/b/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/h/a/Ca$s;->g:Lc/c/a/h/b/a;

    return-object p0
.end method


# virtual methods
.method public a()Lc/c/a/h/a/a;
    .locals 3

    .line 3
    iget-object v0, p0, Lc/c/a/h/a/Ca$s;->a:Lc/c/a/h/b/i;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lc/c/a/h/b/i;

    invoke-direct {v0}, Lc/c/a/h/b/i;-><init>()V

    iput-object v0, p0, Lc/c/a/h/a/Ca$s;->a:Lc/c/a/h/b/i;

    .line 5
    :cond_0
    iget-object v0, p0, Lc/c/a/h/a/Ca$s;->b:Lc/c/a/h/b/o;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lc/c/a/h/b/o;

    invoke-direct {v0}, Lc/c/a/h/b/o;-><init>()V

    iput-object v0, p0, Lc/c/a/h/a/Ca$s;->b:Lc/c/a/h/b/o;

    .line 7
    :cond_1
    iget-object v0, p0, Lc/c/a/h/a/Ca$s;->c:Lc/c/a/h/b/Ya;

    if-nez v0, :cond_2

    .line 8
    new-instance v0, Lc/c/a/h/b/Ya;

    invoke-direct {v0}, Lc/c/a/h/b/Ya;-><init>()V

    iput-object v0, p0, Lc/c/a/h/a/Ca$s;->c:Lc/c/a/h/b/Ya;

    .line 9
    :cond_2
    iget-object v0, p0, Lc/c/a/h/a/Ca$s;->d:Lc/c/a/h/b/D;

    if-nez v0, :cond_3

    .line 10
    new-instance v0, Lc/c/a/h/b/D;

    invoke-direct {v0}, Lc/c/a/h/b/D;-><init>()V

    iput-object v0, p0, Lc/c/a/h/a/Ca$s;->d:Lc/c/a/h/b/D;

    .line 11
    :cond_3
    iget-object v0, p0, Lc/c/a/h/a/Ca$s;->e:Lc/c/a/h/b/mb;

    if-nez v0, :cond_4

    .line 12
    new-instance v0, Lc/c/a/h/b/mb;

    invoke-direct {v0}, Lc/c/a/h/b/mb;-><init>()V

    iput-object v0, p0, Lc/c/a/h/a/Ca$s;->e:Lc/c/a/h/b/mb;

    .line 13
    :cond_4
    iget-object v0, p0, Lc/c/a/h/a/Ca$s;->f:Lc/c/a/h/b/Wa;

    if-nez v0, :cond_5

    .line 14
    new-instance v0, Lc/c/a/h/b/Wa;

    invoke-direct {v0}, Lc/c/a/h/b/Wa;-><init>()V

    iput-object v0, p0, Lc/c/a/h/a/Ca$s;->f:Lc/c/a/h/b/Wa;

    .line 15
    :cond_5
    iget-object v0, p0, Lc/c/a/h/a/Ca$s;->g:Lc/c/a/h/b/a;

    if-nez v0, :cond_6

    .line 16
    new-instance v0, Lc/c/a/h/b/a;

    invoke-direct {v0}, Lc/c/a/h/b/a;-><init>()V

    iput-object v0, p0, Lc/c/a/h/a/Ca$s;->g:Lc/c/a/h/b/a;

    .line 17
    :cond_6
    iget-object v0, p0, Lc/c/a/h/a/Ca$s;->h:Lcom/farsitel/bazaar/app/BazaarApp;

    if-eqz v0, :cond_7

    .line 18
    new-instance v0, Lc/c/a/h/a/Ca;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc/c/a/h/a/Ca;-><init>(Lc/c/a/h/a/Ca$s;Lc/c/a/h/a/l;)V

    return-object v0

    .line 19
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/farsitel/bazaar/app/BazaarApp;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic a()Ld/a/b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lc/c/a/h/a/Ca$s;->a()Lc/c/a/h/a/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/farsitel/bazaar/app/BazaarApp;)V
    .locals 0

    .line 20
    invoke-static {p1}, Ld/b/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/farsitel/bazaar/app/BazaarApp;

    iput-object p1, p0, Lc/c/a/h/a/Ca$s;->h:Lcom/farsitel/bazaar/app/BazaarApp;

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/farsitel/bazaar/app/BazaarApp;

    invoke-virtual {p0, p1}, Lc/c/a/h/a/Ca$s;->a(Lcom/farsitel/bazaar/app/BazaarApp;)V

    return-void
.end method
