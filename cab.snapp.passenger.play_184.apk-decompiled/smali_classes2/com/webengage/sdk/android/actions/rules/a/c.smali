.class public Lcom/webengage/sdk/android/actions/rules/a/c;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/webengage/sdk/android/actions/rules/a/c;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/webengage/sdk/android/actions/rules/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/webengage/sdk/android/actions/rules/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/webengage/sdk/android/actions/rules/a/h;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/webengage/sdk/android/actions/rules/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a/c;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a/c;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a/c;->d:Ljava/util/Map;

    new-instance v0, Lcom/webengage/sdk/android/actions/rules/a/b;

    invoke-direct {v0}, Lcom/webengage/sdk/android/actions/rules/a/b;-><init>()V

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a/c;->e:Lcom/webengage/sdk/android/actions/rules/a/a;

    invoke-direct {p0}, Lcom/webengage/sdk/android/actions/rules/a/c;->b()V

    return-void
.end method

.method public static a()Lcom/webengage/sdk/android/actions/rules/a/c;
    .locals 2

    sget-object v0, Lcom/webengage/sdk/android/actions/rules/a/c;->a:Lcom/webengage/sdk/android/actions/rules/a/c;

    if-nez v0, :cond_1

    const-class v0, Lcom/webengage/sdk/android/actions/rules/a/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/webengage/sdk/android/actions/rules/a/c;->a:Lcom/webengage/sdk/android/actions/rules/a/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/webengage/sdk/android/actions/rules/a/c;

    invoke-direct {v1}, Lcom/webengage/sdk/android/actions/rules/a/c;-><init>()V

    sput-object v1, Lcom/webengage/sdk/android/actions/rules/a/c;->a:Lcom/webengage/sdk/android/actions/rules/a/c;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/webengage/sdk/android/actions/rules/a/c;->a:Lcom/webengage/sdk/android/actions/rules/a/c;

    return-object v0
.end method

.method private b()V
    .locals 4

    new-instance v0, Lcom/webengage/sdk/android/actions/rules/a/c$1;

    const-string v1, "!"

    invoke-direct {v0, p0, v1}, Lcom/webengage/sdk/android/actions/rules/a/c$1;-><init>(Lcom/webengage/sdk/android/actions/rules/a/c;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/actions/rules/a/c;->a(Lcom/webengage/sdk/android/actions/rules/a/e;)V

    new-instance v0, Lcom/webengage/sdk/android/actions/rules/a/c$8;

    const-string v1, ","

    const/high16 v2, -0x80000000

    invoke-direct {v0, p0, v1, v2}, Lcom/webengage/sdk/android/actions/rules/a/c$8;-><init>(Lcom/webengage/sdk/android/actions/rules/a/c;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/actions/rules/a/c;->a(Lcom/webengage/sdk/android/actions/rules/a/g;)V

    new-instance v0, Lcom/webengage/sdk/android/actions/rules/a/c$9;

    const/16 v1, 0x64

    const-string v2, ">="

    invoke-direct {v0, p0, v2, v1}, Lcom/webengage/sdk/android/actions/rules/a/c$9;-><init>(Lcom/webengage/sdk/android/actions/rules/a/c;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/actions/rules/a/c;->a(Lcom/webengage/sdk/android/actions/rules/a/g;)V

    new-instance v0, Lcom/webengage/sdk/android/actions/rules/a/c$10;

    const-string v2, "<="

    invoke-direct {v0, p0, v2, v1}, Lcom/webengage/sdk/android/actions/rules/a/c$10;-><init>(Lcom/webengage/sdk/android/actions/rules/a/c;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/actions/rules/a/c;->a(Lcom/webengage/sdk/android/actions/rules/a/g;)V

    new-instance v0, Lcom/webengage/sdk/android/actions/rules/a/c$11;

    const-string v2, ">"

    invoke-direct {v0, p0, v2, v1}, Lcom/webengage/sdk/android/actions/rules/a/c$11;-><init>(Lcom/webengage/sdk/android/actions/rules/a/c;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/actions/rules/a/c;->a(Lcom/webengage/sdk/android/actions/rules/a/g;)V

    new-instance v0, Lcom/webengage/sdk/android/actions/rules/a/c$12;

    const-string v2, "<"

    invoke-direct {v0, p0, v2, v1}, Lcom/webengage/sdk/android/actions/rules/a/c$12;-><init>(Lcom/webengage/sdk/android/actions/rules/a/c;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/actions/rules/a/c;->a(Lcom/webengage/sdk/android/actions/rules/a/g;)V

    new-instance v0, Lcom/webengage/sdk/android/actions/rules/a/c$13;

    const-string v2, "&&"

    const/16 v3, 0xa

    invoke-direct {v0, p0, v2, v3}, Lcom/webengage/sdk/android/actions/rules/a/c$13;-><init>(Lcom/webengage/sdk/android/actions/rules/a/c;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/actions/rules/a/c;->a(Lcom/webengage/sdk/android/actions/rules/a/g;)V

    new-instance v0, Lcom/webengage/sdk/android/actions/rules/a/c$14;

    const-string v2, "||"

    const/16 v3, 0x9

    invoke-direct {v0, p0, v2, v3}, Lcom/webengage/sdk/android/actions/rules/a/c$14;-><init>(Lcom/webengage/sdk/android/actions/rules/a/c;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/actions/rules/a/c;->a(Lcom/webengage/sdk/android/actions/rules/a/g;)V

    new-instance v0, Lcom/webengage/sdk/android/actions/rules/a/c$15;

    const-string v2, "=="

    invoke-direct {v0, p0, v2, v1}, Lcom/webengage/sdk/android/actions/rules/a/c$15;-><init>(Lcom/webengage/sdk/android/actions/rules/a/c;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/actions/rules/a/c;->a(Lcom/webengage/sdk/android/actions/rules/a/g;)V

    new-instance v0, Lcom/webengage/sdk/android/actions/rules/a/c$2;

    const-string v2, "!="

    invoke-direct {v0, p0, v2, v1}, Lcom/webengage/sdk/android/actions/rules/a/c$2;-><init>(Lcom/webengage/sdk/android/actions/rules/a/c;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/actions/rules/a/c;->a(Lcom/webengage/sdk/android/actions/rules/a/g;)V

    new-instance v0, Lcom/webengage/sdk/android/actions/rules/a/c$3;

    const/16 v1, 0x65

    const-string v2, "+"

    invoke-direct {v0, p0, v2, v1}, Lcom/webengage/sdk/android/actions/rules/a/c$3;-><init>(Lcom/webengage/sdk/android/actions/rules/a/c;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/actions/rules/a/c;->a(Lcom/webengage/sdk/android/actions/rules/a/g;)V

    new-instance v0, Lcom/webengage/sdk/android/actions/rules/a/c$4;

    const-string v2, "-"

    invoke-direct {v0, p0, v2, v1}, Lcom/webengage/sdk/android/actions/rules/a/c$4;-><init>(Lcom/webengage/sdk/android/actions/rules/a/c;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/actions/rules/a/c;->a(Lcom/webengage/sdk/android/actions/rules/a/g;)V

    new-instance v0, Lcom/webengage/sdk/android/actions/rules/a/c$5;

    const/16 v1, 0x66

    const-string v2, "*"

    invoke-direct {v0, p0, v2, v1}, Lcom/webengage/sdk/android/actions/rules/a/c$5;-><init>(Lcom/webengage/sdk/android/actions/rules/a/c;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/actions/rules/a/c;->a(Lcom/webengage/sdk/android/actions/rules/a/g;)V

    new-instance v0, Lcom/webengage/sdk/android/actions/rules/a/c$6;

    const-string v2, "/"

    invoke-direct {v0, p0, v2, v1}, Lcom/webengage/sdk/android/actions/rules/a/c$6;-><init>(Lcom/webengage/sdk/android/actions/rules/a/c;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/actions/rules/a/c;->a(Lcom/webengage/sdk/android/actions/rules/a/g;)V

    new-instance v0, Lcom/webengage/sdk/android/actions/rules/a/c$7;

    const-string v1, "^"

    const/16 v2, 0x67

    invoke-direct {v0, p0, v1, v2}, Lcom/webengage/sdk/android/actions/rules/a/c$7;-><init>(Lcom/webengage/sdk/android/actions/rules/a/c;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/webengage/sdk/android/actions/rules/a/c;->a(Lcom/webengage/sdk/android/actions/rules/a/g;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/util/List;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/webengage/sdk/android/actions/rules/a/c;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/rules/a/c;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/webengage/sdk/android/actions/rules/a/h;

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/rules/a/h;->a()Ljava/lang/Object;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/webengage/sdk/android/actions/rules/a/c;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/webengage/sdk/android/actions/rules/a/c;->b:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/webengage/sdk/android/actions/rules/a/g;

    invoke-virtual {v1, v3, v2}, Lcom/webengage/sdk/android/actions/rules/a/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Lcom/webengage/sdk/android/actions/rules/a/c;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/webengage/sdk/android/actions/rules/a/c;->c:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/webengage/sdk/android/actions/rules/a/e;

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/webengage/sdk/android/actions/rules/a/e;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/webengage/sdk/android/actions/rules/a/c;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/webengage/sdk/android/actions/rules/a/e;

    invoke-virtual {v1, v3}, Lcom/webengage/sdk/android/actions/rules/a/e;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/webengage/sdk/android/actions/rules/a/c;->e:Lcom/webengage/sdk/android/actions/rules/a/a;

    invoke-virtual {p0, v1}, Lcom/webengage/sdk/android/actions/rules/a/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/webengage/sdk/android/actions/rules/a/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/webengage/sdk/android/actions/rules/a/e;)V
    .locals 3

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a/c;->c:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/webengage/sdk/android/actions/rules/a/c;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/rules/a/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/webengage/sdk/android/actions/rules/a/g;)V
    .locals 3

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a/c;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/webengage/sdk/android/actions/rules/a/c;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/rules/a/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a/c;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/webengage/sdk/android/actions/rules/a/c;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/webengage/sdk/android/actions/rules/a/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/webengage/sdk/android/actions/rules/a/c;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a/c;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/webengage/sdk/android/actions/rules/a/g;

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/webengage/sdk/android/actions/rules/a/g;

    invoke-virtual {p2}, Lcom/webengage/sdk/android/actions/rules/a/g;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/rules/a/g;->b()I

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/rules/a/g;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/rules/a/g;->b()I

    move-result p1

    invoke-virtual {p2}, Lcom/webengage/sdk/android/actions/rules/a/g;->b()I

    move-result p2

    if-ge p1, p2, :cond_2

    return v1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/webengage/sdk/android/actions/rules/a/c;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a/c;->c:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/webengage/sdk/android/actions/rules/a/c;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a/c;->d:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/webengage/sdk/android/actions/rules/a/c;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(Ljava/lang/String;)Lcom/webengage/sdk/android/actions/rules/a/g;
    .locals 2

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a/c;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/webengage/sdk/android/actions/rules/a/c;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/webengage/sdk/android/actions/rules/a/g;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(Ljava/lang/String;)Lcom/webengage/sdk/android/actions/rules/a/e;
    .locals 2

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/rules/a/c;->c:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/webengage/sdk/android/actions/rules/a/c;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/webengage/sdk/android/actions/rules/a/e;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected f(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/webengage/sdk/android/actions/rules/a/f;

    invoke-direct {v1, p1}, Lcom/webengage/sdk/android/actions/rules/a/f;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    const-string v2, ""

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/rules/a/f;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v1}, Lcom/webengage/sdk/android/actions/rules/a/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/webengage/sdk/android/actions/rules/a/c;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {p0, v3}, Lcom/webengage/sdk/android/actions/rules/a/c;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "["

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto/16 :goto_4

    :cond_3
    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "]"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    const-string v2, "null"

    :goto_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/webengage/sdk/android/actions/rules/a/c;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Lcom/webengage/sdk/android/actions/rules/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    :goto_4
    invoke-virtual {p1, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_c
    :goto_5
    move-object v2, v3

    goto/16 :goto_0

    :cond_d
    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_e
    return-object v0

    :cond_f
    :goto_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const-string v1, ""

    move-object v2, v1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "\\"

    if-ge v0, v3, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x5c

    if-ne v3, v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    shr-int/lit8 v1, v1, 0x1

    :goto_1
    if-eqz v1, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    shr-int/lit8 p1, v1, 0x1

    :goto_3
    if-eqz p1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    :cond_3
    return-object v2
.end method

.method public h(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/webengage/sdk/android/actions/rules/a/c;->a()Lcom/webengage/sdk/android/actions/rules/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/webengage/sdk/android/actions/rules/a/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/webengage/sdk/android/actions/rules/a/c;->a()Lcom/webengage/sdk/android/actions/rules/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/webengage/sdk/android/actions/rules/a/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/webengage/sdk/android/actions/rules/a/c;->a()Lcom/webengage/sdk/android/actions/rules/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/webengage/sdk/android/actions/rules/a/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
