.class final Lcom/a/a/a/ag$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/a/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/a/a/a/ag$b;

.field final b:J

.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/lang/String;

.field e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/lang/String;

.field g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/a/a/a/ag$b;)V
    .locals 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/a/a/a/ag$a;->a:Lcom/a/a/a/ag$b;

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/a/a/ag$a;->b:J

    const/4 p1, 0x0

    .line 101
    iput-object p1, p0, Lcom/a/a/a/ag$a;->c:Ljava/util/Map;

    .line 102
    iput-object p1, p0, Lcom/a/a/a/ag$a;->d:Ljava/lang/String;

    .line 103
    iput-object p1, p0, Lcom/a/a/a/ag$a;->e:Ljava/util/Map;

    .line 104
    iput-object p1, p0, Lcom/a/a/a/ag$a;->f:Ljava/lang/String;

    .line 105
    iput-object p1, p0, Lcom/a/a/a/ag$a;->g:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final build(Lcom/a/a/a/ah;)Lcom/a/a/a/ag;
    .locals 12

    .line 134
    new-instance v11, Lcom/a/a/a/ag;

    iget-wide v2, p0, Lcom/a/a/a/ag$a;->b:J

    iget-object v4, p0, Lcom/a/a/a/ag$a;->a:Lcom/a/a/a/ag$b;

    iget-object v5, p0, Lcom/a/a/a/ag$a;->c:Ljava/util/Map;

    iget-object v6, p0, Lcom/a/a/a/ag$a;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/a/a/a/ag$a;->e:Ljava/util/Map;

    iget-object v8, p0, Lcom/a/a/a/ag$a;->f:Ljava/lang/String;

    iget-object v9, p0, Lcom/a/a/a/ag$a;->g:Ljava/util/Map;

    const/4 v10, 0x0

    move-object v0, v11

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/a/a/a/ag;-><init>(Lcom/a/a/a/ah;JLcom/a/a/a/ag$b;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;B)V

    return-object v11
.end method

.method public final customAttributes(Ljava/util/Map;)Lcom/a/a/a/ag$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/a/a/a/ag$a;"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/a/a/a/ag$a;->e:Ljava/util/Map;

    return-object p0
.end method

.method public final customType(Ljava/lang/String;)Lcom/a/a/a/ag$a;
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/a/a/a/ag$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final details(Ljava/util/Map;)Lcom/a/a/a/ag$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/a/a/a/ag$a;"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/a/a/a/ag$a;->c:Ljava/util/Map;

    return-object p0
.end method

.method public final predefinedAttributes(Ljava/util/Map;)Lcom/a/a/a/ag$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/a/a/a/ag$a;"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/a/a/a/ag$a;->g:Ljava/util/Map;

    return-object p0
.end method

.method public final predefinedType(Ljava/lang/String;)Lcom/a/a/a/ag$a;
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/a/a/a/ag$a;->f:Ljava/lang/String;

    return-object p0
.end method
