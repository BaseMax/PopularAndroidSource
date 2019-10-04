.class public final Lc/c/a/e/b/e;
.super Ljava/lang/Object;
.source "RequestPropertiesDataSource.kt"


# instance fields
.field public final a:Lc/c/a/e/b/c;

.field public final b:Lc/c/a/e/d/u/a;

.field public final c:Lc/c/a/e/i/a;

.field public final d:Lc/c/a/e/e/a;


# direct methods
.method public constructor <init>(Lc/c/a/e/b/c;Lc/c/a/e/d/u/a;Lc/c/a/e/i/a;Lc/c/a/e/e/a;)V
    .locals 1

    const-string v0, "deviceInfoDataSource"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settingsRepository"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placeDataSource"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locationManager"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/b/e;->a:Lc/c/a/e/b/c;

    iput-object p2, p0, Lc/c/a/e/b/e;->b:Lc/c/a/e/d/u/a;

    iput-object p3, p0, Lc/c/a/e/b/e;->c:Lc/c/a/e/i/a;

    iput-object p4, p0, Lc/c/a/e/b/e;->d:Lc/c/a/e/e/a;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/e/b/e;->a:Lc/c/a/e/b/c;

    invoke-virtual {v0}, Lc/c/a/e/b/c;->i()Lcom/farsitel/bazaar/data/entity/Language;

    move-result-object v0

    sget-object v1, Lcom/farsitel/bazaar/data/entity/Language;->PERSIAN:Lcom/farsitel/bazaar/data/entity/Language;

    if-ne v0, v1, :cond_0

    const-string v0, "fa"

    goto :goto_0

    :cond_0
    const-string v0, "en"

    :goto_0
    return-object v0
.end method

.method public final b()Lcom/farsitel/bazaar/data/entity/RequestProperties;
    .locals 35

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lc/c/a/e/b/e;->b:Lc/c/a/e/d/u/a;

    invoke-virtual {v1}, Lc/c/a/e/d/u/a;->x()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v0, Lc/c/a/e/b/e;->d:Lc/c/a/e/e/a;

    invoke-virtual {v1}, Lc/c/a/e/e/a;->a()Lcom/farsitel/bazaar/data/entity/Location;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 3
    :goto_0
    new-instance v13, Lcom/farsitel/bazaar/data/entity/RequestProperties;

    .line 4
    iget-object v3, v0, Lc/c/a/e/b/e;->a:Lc/c/a/e/b/c;

    const/4 v4, 0x1

    invoke-static {v3, v2, v4, v2}, Lc/c/a/e/b/c;->a(Lc/c/a/e/b/c;Lh/f/a/a;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 5
    iget-object v3, v0, Lc/c/a/e/b/e;->a:Lc/c/a/e/b/c;

    invoke-virtual {v3}, Lc/c/a/e/b/c;->b()Ljava/lang/String;

    move-result-object v5

    .line 6
    iget-object v3, v0, Lc/c/a/e/b/e;->a:Lc/c/a/e/b/c;

    invoke-virtual {v3}, Lc/c/a/e/b/c;->c()J

    move-result-wide v6

    .line 7
    iget-object v3, v0, Lc/c/a/e/b/e;->a:Lc/c/a/e/b/c;

    invoke-virtual {v3}, Lc/c/a/e/b/c;->i()Lcom/farsitel/bazaar/data/entity/Language;

    move-result-object v3

    invoke-virtual {v3}, Lcom/farsitel/bazaar/data/entity/Language;->getValue()I

    move-result v8

    .line 8
    iget-object v3, v0, Lc/c/a/e/b/e;->b:Lc/c/a/e/d/u/a;

    invoke-virtual {v3}, Lc/c/a/e/d/u/a;->u()Z

    move-result v10

    .line 9
    new-instance v9, Lcom/farsitel/bazaar/data/entity/DeviceInfo;

    move-object v14, v9

    .line 10
    iget-object v3, v0, Lc/c/a/e/b/e;->a:Lc/c/a/e/b/c;

    invoke-virtual {v3}, Lc/c/a/e/b/c;->o()I

    move-result v15

    .line 11
    iget-object v3, v0, Lc/c/a/e/b/e;->a:Lc/c/a/e/b/c;

    invoke-virtual {v3}, Lc/c/a/e/b/c;->k()Ljava/lang/String;

    move-result-object v16

    .line 12
    iget-object v3, v0, Lc/c/a/e/b/e;->a:Lc/c/a/e/b/c;

    invoke-virtual {v3}, Lc/c/a/e/b/c;->n()Ljava/lang/String;

    move-result-object v17

    .line 13
    iget-object v3, v0, Lc/c/a/e/b/e;->a:Lc/c/a/e/b/c;

    invoke-virtual {v3}, Lc/c/a/e/b/c;->j()Ljava/lang/String;

    move-result-object v31

    .line 14
    iget-object v3, v0, Lc/c/a/e/b/e;->a:Lc/c/a/e/b/c;

    invoke-virtual {v3}, Lc/c/a/e/b/c;->q()I

    move-result v21

    .line 15
    iget-object v3, v0, Lc/c/a/e/b/e;->a:Lc/c/a/e/b/c;

    invoke-virtual {v3}, Lc/c/a/e/b/c;->p()I

    move-result v22

    .line 16
    iget-object v3, v0, Lc/c/a/e/b/e;->c:Lc/c/a/e/i/a;

    invoke-virtual {v3}, Lc/c/a/e/i/a;->a()Ljava/lang/String;

    move-result-object v24

    .line 17
    iget-object v3, v0, Lc/c/a/e/b/e;->c:Lc/c/a/e/i/a;

    invoke-virtual {v3}, Lc/c/a/e/i/a;->k()Ljava/lang/String;

    move-result-object v25

    .line 18
    iget-object v3, v0, Lc/c/a/e/b/e;->c:Lc/c/a/e/i/a;

    invoke-virtual {v3}, Lc/c/a/e/i/a;->b()Ljava/lang/String;

    move-result-object v26

    .line 19
    iget-object v3, v0, Lc/c/a/e/b/e;->a:Lc/c/a/e/b/c;

    invoke-virtual {v3}, Lc/c/a/e/b/c;->e()Ljava/lang/String;

    move-result-object v27

    .line 20
    iget-object v3, v0, Lc/c/a/e/b/e;->a:Lc/c/a/e/b/c;

    invoke-virtual {v3}, Lc/c/a/e/b/c;->f()I

    move-result v28

    .line 21
    iget-object v3, v0, Lc/c/a/e/b/e;->a:Lc/c/a/e/b/c;

    invoke-virtual {v3}, Lc/c/a/e/b/c;->s()I

    move-result v29

    .line 22
    iget-object v3, v0, Lc/c/a/e/b/e;->a:Lc/c/a/e/b/c;

    invoke-virtual {v3}, Lc/c/a/e/b/c;->g()I

    move-result v30

    .line 23
    iget-object v3, v0, Lc/c/a/e/b/e;->b:Lc/c/a/e/d/u/a;

    invoke-virtual {v3}, Lc/c/a/e/d/u/a;->f()Ljava/lang/String;

    move-result-object v32

    .line 24
    iget-object v3, v0, Lc/c/a/e/b/e;->b:Lc/c/a/e/d/u/a;

    invoke-virtual {v3}, Lc/c/a/e/d/u/a;->g()Z

    move-result v33

    .line 25
    iget-object v3, v0, Lc/c/a/e/b/e;->a:Lc/c/a/e/b/c;

    invoke-virtual {v3}, Lc/c/a/e/b/c;->a()Ljava/lang/String;

    move-result-object v34

    const-string v18, ""

    const-string v19, ""

    const-string v20, ""

    const-string v23, ""

    .line 26
    invoke-direct/range {v14 .. v34}, Lcom/farsitel/bazaar/data/entity/DeviceInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz v1, :cond_1

    .line 27
    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/entity/Location;->getLatitude()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object v11, v3

    goto :goto_1

    :cond_1
    move-object v11, v2

    :goto_1
    if-eqz v1, :cond_2

    .line 28
    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/entity/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :cond_2
    move-object v12, v2

    move-object v3, v13

    .line 29
    invoke-direct/range {v3 .. v12}, Lcom/farsitel/bazaar/data/entity/RequestProperties;-><init>(Ljava/lang/String;Ljava/lang/String;JILcom/farsitel/bazaar/data/entity/DeviceInfo;ZLjava/lang/Double;Ljava/lang/Double;)V

    return-object v13
.end method
