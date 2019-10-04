.class public Lc/b/a/c/b/w;
.super Ljava/lang/Object;
.source "EngineKeyFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lc/b/a/c/c;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/f;)Lc/b/a/c/b/v;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lc/b/a/c/c;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lc/b/a/c/i<",
            "*>;>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lc/b/a/c/f;",
            ")",
            "Lc/b/a/c/b/v;"
        }
    .end annotation

    .line 1
    new-instance v9, Lc/b/a/c/b/v;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lc/b/a/c/b/v;-><init>(Ljava/lang/Object;Lc/b/a/c/c;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/f;)V

    return-object v9
.end method
