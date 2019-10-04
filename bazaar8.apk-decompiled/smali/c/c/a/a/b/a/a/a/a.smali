.class public final Lc/c/a/a/b/a/a/a/a;
.super Ljava/lang/Object;
.source "ActionLogEntity.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/a/b/a/a/a/a$b;,
        Lc/c/a/a/b/a/a/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lc/c/a/a/b/a/a/a/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/a/b/a/a/a/a;

.field public static final b:Lc/c/a/a/b/a/a/a/a$a;


# instance fields
.field public c:J

.field public d:J

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/String;

.field public j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lc/c/a/a/b/a/a/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/a/b/a/a/a/a$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/a/b/a/a/a/a;->b:Lc/c/a/a/b/a/a/a/a$a;

    .line 1
    invoke-static {}, Lh/a/A;->a()Ljava/util/Map;

    move-result-object v10

    const-string v0, "msg"

    const-string v1, "plz report this to us"

    .line 2
    invoke-static {v0, v1}, Lh/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lh/a/z;->a(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v12

    .line 3
    new-instance v0, Lc/c/a/a/b/a/a/a/a;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-string v7, "system"

    const-string v8, "unknown"

    const-string v9, "parsing_json"

    const-string v11, "parse_error"

    const/4 v13, 0x3

    const/4 v14, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lc/c/a/a/b/a/a/a/a;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;ILh/f/b/f;)V

    sput-object v0, Lc/c/a/a/b/a/a/a/a;->a:Lc/c/a/a/b/a/a/a/a;

    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "agent"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "who"

    invoke-static {p6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "where"

    invoke-static {p7, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whereDetails"

    invoke-static {p8, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "what"

    invoke-static {p9, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whatDetails"

    invoke-static {p10, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lc/c/a/a/b/a/a/a/a;->c:J

    iput-wide p3, p0, Lc/c/a/a/b/a/a/a/a;->d:J

    iput-object p5, p0, Lc/c/a/a/b/a/a/a/a;->e:Ljava/lang/String;

    iput-object p6, p0, Lc/c/a/a/b/a/a/a/a;->f:Ljava/lang/String;

    iput-object p7, p0, Lc/c/a/a/b/a/a/a/a;->g:Ljava/lang/String;

    iput-object p8, p0, Lc/c/a/a/b/a/a/a/a;->h:Ljava/util/Map;

    iput-object p9, p0, Lc/c/a/a/b/a/a/a/a;->i:Ljava/lang/String;

    iput-object p10, p0, Lc/c/a/a/b/a/a/a/a;->j:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;ILh/f/b/f;)V
    .locals 13

    and-int/lit8 v0, p11, 0x1

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    move-wide v3, v0

    goto :goto_0

    :cond_0
    move-wide v3, p1

    :goto_0
    and-int/lit8 v0, p11, 0x2

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v5, v0

    goto :goto_1

    :cond_1
    move-wide/from16 v5, p3

    :goto_1
    move-object v2, p0

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v2 .. v12}, Lc/c/a/a/b/a/a/a/a;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static final synthetic f()Lc/c/a/a/b/a/a/a/a;
    .locals 1

    .line 1
    sget-object v0, Lc/c/a/a/b/a/a/a/a;->a:Lc/c/a/a/b/a/a/a/a;

    return-object v0
.end method


# virtual methods
.method public a(Lc/c/a/a/b/a/a/a/a;)I
    .locals 4

    const-string v0, "other"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v0, p0, Lc/c/a/a/b/a/a/a/a;->d:J

    iget-wide v2, p1, Lc/c/a/a/b/a/a/a/a;->d:J

    cmp-long p1, v0, v2

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lc/c/a/a/b/a/a/a/a;

    invoke-virtual {p0, p1}, Lc/c/a/a/b/a/a/a/a;->a(Lc/c/a/a/b/a/a/a/a;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/a/b/a/a/a/a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/c/a/a/b/a/a/a/a;->d:J

    return-wide v0
.end method

.method public final h()Lc/c/a/a/b/a/a/b/i;
    .locals 9

    .line 1
    new-instance v8, Lc/c/a/a/b/a/a/b/i;

    .line 2
    iget-wide v3, p0, Lc/c/a/a/b/a/a/a/a;->d:J

    .line 3
    sget-object v0, Lc/c/a/e/j/b;->b:Lc/c/a/e/j/b;

    invoke-virtual {v0}, Lc/c/a/e/j/b;->a()Lc/e/d/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc/e/d/j;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v1, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, v8

    .line 4
    invoke-direct/range {v0 .. v7}, Lc/c/a/a/b/a/a/b/i;-><init>(JJLjava/lang/String;ILh/f/b/f;)V

    return-object v8
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/a/b/a/a/a/a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Lc/c/a/a/b/a/a/c/a/c;
    .locals 13

    .line 1
    iget-wide v1, p0, Lc/c/a/a/b/a/a/a/a;->d:J

    .line 2
    iget-object v3, p0, Lc/c/a/a/b/a/a/a/a;->e:Ljava/lang/String;

    .line 3
    iget-object v6, p0, Lc/c/a/a/b/a/a/a/a;->f:Ljava/lang/String;

    .line 4
    sget-object v0, Lc/c/a/e/j/b;->b:Lc/c/a/e/j/b;

    invoke-virtual {v0}, Lc/c/a/e/j/b;->a()Lc/e/d/j;

    move-result-object v0

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lc/c/a/a/b/a/a/a/a;->g:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v5, v8

    iget-object v7, p0, Lc/c/a/a/b/a/a/a/a;->h:Ljava/util/Map;

    const/4 v9, 0x1

    aput-object v7, v5, v9

    invoke-virtual {v0, v5}, Lc/e/d/j;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lh/k/c;->a:Ljava/nio/charset/Charset;

    const-string v7, "null cannot be cast to non-null type java.lang.String"

    if-eqz v0, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v5, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v5}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/farsitel/bazaar/common/util/Base64;->a([B)Ljava/lang/String;

    move-result-object v10

    const-string v0, "Base64.encode(GSON().toJ\u2026toString().toByteArray())"

    invoke-static {v10, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v11, Lc/c/a/e/j/b;->b:Lc/c/a/e/j/b;

    invoke-virtual {v11}, Lc/c/a/e/j/b;->a()Lc/e/d/j;

    move-result-object v11

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v12, p0, Lc/c/a/a/b/a/a/a/a;->i:Ljava/lang/String;

    aput-object v12, v4, v8

    iget-object v8, p0, Lc/c/a/a/b/a/a/a/a;->j:Ljava/util/Map;

    aput-object v8, v4, v9

    invoke-virtual {v11, v4}, Lc/e/d/j;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lh/k/c;->a:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-static {v4, v5}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/farsitel/bazaar/common/util/Base64;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v7, Lc/c/a/a/b/a/a/c/a/c;

    move-object v0, v7

    move-object v5, v10

    invoke-direct/range {v0 .. v6}, Lc/c/a/a/b/a/a/c/a/c;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    .line 7
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v7}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v7}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v6, Lc/c/a/a/b/a/a/a/a$b;

    .line 2
    iget-wide v0, p0, Lc/c/a/a/b/a/a/a/a;->d:J

    invoke-static {v0, v1}, Lc/c/a/c/b/f;->a(J)Ljava/lang/String;

    move-result-object v3

    .line 3
    iget-object v1, p0, Lc/c/a/a/b/a/a/a/a;->e:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lc/c/a/a/b/a/a/a/a;->f:Ljava/lang/String;

    const/4 v0, 0x2

    .line 5
    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lc/c/a/a/b/a/a/a/a;->g:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v4, v7

    iget-object v5, p0, Lc/c/a/a/b/a/a/a/a;->h:Ljava/util/Map;

    const/4 v8, 0x1

    aput-object v5, v4, v8

    invoke-static {v4}, Lh/a/l;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lc/c/a/a/b/a/a/a/a;->i:Ljava/lang/String;

    aput-object v4, v0, v7

    iget-object v4, p0, Lc/c/a/a/b/a/a/a/a;->j:Ljava/util/Map;

    aput-object v4, v0, v8

    invoke-static {v0}, Lh/a/l;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object v0, v6

    .line 7
    invoke-direct/range {v0 .. v5}, Lc/c/a/a/b/a/a/a/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 8
    invoke-virtual {v6}, Lc/c/a/a/b/a/a/a/a$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
