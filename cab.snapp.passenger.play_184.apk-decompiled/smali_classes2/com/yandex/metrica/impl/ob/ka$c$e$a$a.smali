.class public final Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;
.super Lcom/yandex/metrica/impl/ob/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ka$c$e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1073
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/e;-><init>()V

    .line 1074
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;->d()Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/e;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1047
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;->b(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/yandex/metrica/impl/ob/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1088
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 1089
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 1090
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 1092
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    .line 1093
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 1095
    :cond_1
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/e;->a(Lcom/yandex/metrica/impl/ob/b;)V

    return-void
.end method

.method public final b(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1119
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->a()I

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    .line 1124
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/g;->a(Lcom/yandex/metrica/impl/ob/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1138
    :cond_1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;->d:Ljava/lang/String;

    goto :goto_0

    .line 1134
    :cond_2
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;->c:Ljava/lang/String;

    goto :goto_0

    .line 1130
    :cond_3
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method protected final c()I
    .locals 4

    .line 1100
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/e;->c()I

    move-result v0

    .line 1101
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;->b:Ljava/lang/String;

    const/4 v2, 0x1

    .line 1102
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1103
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    .line 1104
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;->c:Ljava/lang/String;

    .line 1105
    invoke-static {v1, v3}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1107
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    .line 1108
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;->d:Ljava/lang/String;

    .line 1109
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public final d()Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;
    .locals 1

    const-string v0, ""

    .line 1078
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;->b:Ljava/lang/String;

    .line 1079
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;->c:Ljava/lang/String;

    .line 1080
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;->d:Ljava/lang/String;

    const/4 v0, -0x1

    .line 1081
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;->a:I

    return-object p0
.end method
