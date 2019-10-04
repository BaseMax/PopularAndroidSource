.class public final Lcom/yandex/metrica/impl/ob/ka$c$e$a;
.super Lcom/yandex/metrica/impl/ob/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ka$c$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;,
        Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;
    }
.end annotation


# static fields
.field private static volatile p:[Lcom/yandex/metrica/impl/ob/ka$c$e$a;


# instance fields
.field public b:J

.field public c:J

.field public d:I

.field public e:Ljava/lang/String;

.field public f:[B

.field public g:Lcom/yandex/metrica/impl/ob/ka$c$b;

.field public h:Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;

.field public i:Ljava/lang/String;

.field public j:Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;

.field public k:I

.field public l:I

.field public m:I

.field public n:[B

.field public o:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1213
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/e;-><init>()V

    .line 1214
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->e()Lcom/yandex/metrica/impl/ob/ka$c$e$a;

    return-void
.end method

.method public static d()[Lcom/yandex/metrica/impl/ob/ka$c$e$a;
    .locals 2

    .line 1160
    sget-object v0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->p:[Lcom/yandex/metrica/impl/ob/ka$c$e$a;

    if-nez v0, :cond_1

    .line 1161
    sget-object v0, Lcom/yandex/metrica/impl/ob/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1163
    :try_start_0
    sget-object v1, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->p:[Lcom/yandex/metrica/impl/ob/ka$c$e$a;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/ka$c$e$a;

    .line 1164
    sput-object v1, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->p:[Lcom/yandex/metrica/impl/ob/ka$c$e$a;

    .line 1166
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1168
    :cond_1
    :goto_0
    sget-object v0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->p:[Lcom/yandex/metrica/impl/ob/ka$c$e$a;

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/e;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 703
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->b(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/ka$c$e$a;

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

    .line 1239
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->b:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(IJ)V

    .line 1240
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->c:J

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(IJ)V

    .line 1241
    iget v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->d:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 1242
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->e:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 1243
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 1245
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->f:[B

    sget-object v2, Lcom/yandex/metrica/impl/ob/g;->c:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x5

    .line 1246
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->f:[B

    invoke-virtual {p1, v0, v2}, Lcom/yandex/metrica/impl/ob/b;->a(I[B)V

    .line 1248
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->g:Lcom/yandex/metrica/impl/ob/ka$c$b;

    if-eqz v0, :cond_2

    const/4 v2, 0x6

    .line 1249
    invoke-virtual {p1, v2, v0}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/e;)V

    .line 1251
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->h:Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;

    if-eqz v0, :cond_3

    const/4 v2, 0x7

    .line 1252
    invoke-virtual {p1, v2, v0}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/e;)V

    .line 1254
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x8

    .line 1255
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 1257
    :cond_4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->j:Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;

    if-eqz v0, :cond_5

    const/16 v1, 0x9

    .line 1258
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/e;)V

    .line 1260
    :cond_5
    iget v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->k:I

    if-eqz v0, :cond_6

    const/16 v1, 0xa

    .line 1261
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 1263
    :cond_6
    iget v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->l:I

    if-eqz v0, :cond_7

    const/16 v1, 0xc

    .line 1264
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(II)V

    .line 1266
    :cond_7
    iget v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    const/16 v2, 0xd

    .line 1267
    invoke-virtual {p1, v2, v0}, Lcom/yandex/metrica/impl/ob/b;->a(II)V

    .line 1269
    :cond_8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->n:[B

    sget-object v2, Lcom/yandex/metrica/impl/ob/g;->c:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xe

    .line 1270
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->n:[B

    invoke-virtual {p1, v0, v2}, Lcom/yandex/metrica/impl/ob/b;->a(I[B)V

    .line 1272
    :cond_9
    iget v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->o:I

    if-eq v0, v1, :cond_a

    const/16 v1, 0xf

    .line 1273
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(II)V

    .line 1275
    :cond_a
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/e;->a(Lcom/yandex/metrica/impl/ob/b;)V

    return-void
.end method

.method public final b(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/ka$c$e$a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1339
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->a()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 1344
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/g;->a(Lcom/yandex/metrica/impl/ob/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1424
    :sswitch_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->g()I

    move-result v0

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 1429
    :cond_1
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->o:I

    goto :goto_0

    .line 1420
    :sswitch_1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->j()[B

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->n:[B

    goto :goto_0

    .line 1409
    :sswitch_2
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->g()I

    move-result v0

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 1414
    :cond_2
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->m:I

    goto :goto_0

    .line 1399
    :sswitch_3
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->g()I

    move-result v0

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_3

    goto :goto_0

    .line 1403
    :cond_3
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->l:I

    goto :goto_0

    .line 1395
    :sswitch_4
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->k()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->k:I

    goto :goto_0

    .line 1388
    :sswitch_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->j:Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;

    if-nez v0, :cond_4

    .line 1389
    new-instance v0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->j:Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;

    .line 1391
    :cond_4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->j:Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/a;->a(Lcom/yandex/metrica/impl/ob/e;)V

    goto :goto_0

    .line 1384
    :sswitch_6
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->i:Ljava/lang/String;

    goto :goto_0

    .line 1377
    :sswitch_7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->h:Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;

    if-nez v0, :cond_5

    .line 1378
    new-instance v0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->h:Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;

    .line 1380
    :cond_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->h:Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/a;->a(Lcom/yandex/metrica/impl/ob/e;)V

    goto :goto_0

    .line 1370
    :sswitch_8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->g:Lcom/yandex/metrica/impl/ob/ka$c$b;

    if-nez v0, :cond_6

    .line 1371
    new-instance v0, Lcom/yandex/metrica/impl/ob/ka$c$b;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ka$c$b;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->g:Lcom/yandex/metrica/impl/ob/ka$c$b;

    .line 1373
    :cond_6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->g:Lcom/yandex/metrica/impl/ob/ka$c$b;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/a;->a(Lcom/yandex/metrica/impl/ob/e;)V

    goto :goto_0

    .line 1366
    :sswitch_9
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->j()[B

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->f:[B

    goto/16 :goto_0

    .line 1362
    :sswitch_a
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->e:Ljava/lang/String;

    goto/16 :goto_0

    .line 1358
    :sswitch_b
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->k()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->d:I

    goto/16 :goto_0

    .line 1354
    :sswitch_c
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->c:J

    goto/16 :goto_0

    .line 1350
    :sswitch_d
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->b:J

    goto/16 :goto_0

    :sswitch_e
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_e
        0x8 -> :sswitch_d
        0x10 -> :sswitch_c
        0x18 -> :sswitch_b
        0x22 -> :sswitch_a
        0x2a -> :sswitch_9
        0x32 -> :sswitch_8
        0x3a -> :sswitch_7
        0x42 -> :sswitch_6
        0x4a -> :sswitch_5
        0x50 -> :sswitch_4
        0x60 -> :sswitch_3
        0x68 -> :sswitch_2
        0x72 -> :sswitch_1
        0x78 -> :sswitch_0
    .end sparse-switch
.end method

.method protected final c()I
    .locals 4

    .line 1280
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/e;->c()I

    move-result v0

    .line 1281
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->b:J

    const/4 v3, 0x1

    .line 1282
    invoke-static {v3, v1, v2}, Lcom/yandex/metrica/impl/ob/b;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1283
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->c:J

    const/4 v3, 0x2

    .line 1284
    invoke-static {v3, v1, v2}, Lcom/yandex/metrica/impl/ob/b;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1285
    iget v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->d:I

    const/4 v2, 0x3

    .line 1286
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1287
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->e:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    .line 1288
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->e:Ljava/lang/String;

    .line 1289
    invoke-static {v1, v3}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1291
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->f:[B

    sget-object v3, Lcom/yandex/metrica/impl/ob/g;->c:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x5

    .line 1292
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->f:[B

    .line 1293
    invoke-static {v1, v3}, Lcom/yandex/metrica/impl/ob/b;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 1295
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->g:Lcom/yandex/metrica/impl/ob/ka$c$b;

    if-eqz v1, :cond_2

    const/4 v3, 0x6

    .line 1297
    invoke-static {v3, v1}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/e;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1299
    :cond_2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->h:Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;

    if-eqz v1, :cond_3

    const/4 v3, 0x7

    .line 1301
    invoke-static {v3, v1}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/e;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1303
    :cond_3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x8

    .line 1304
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->i:Ljava/lang/String;

    .line 1305
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1307
    :cond_4
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->j:Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;

    if-eqz v1, :cond_5

    const/16 v2, 0x9

    .line 1309
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/e;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1311
    :cond_5
    iget v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->k:I

    if-eqz v1, :cond_6

    const/16 v2, 0xa

    .line 1313
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1315
    :cond_6
    iget v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->l:I

    if-eqz v1, :cond_7

    const/16 v2, 0xc

    .line 1317
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1319
    :cond_7
    iget v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->m:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    const/16 v3, 0xd

    .line 1321
    invoke-static {v3, v1}, Lcom/yandex/metrica/impl/ob/b;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1323
    :cond_8
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->n:[B

    sget-object v3, Lcom/yandex/metrica/impl/ob/g;->c:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0xe

    .line 1324
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->n:[B

    .line 1325
    invoke-static {v1, v3}, Lcom/yandex/metrica/impl/ob/b;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 1327
    :cond_9
    iget v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->o:I

    if-eq v1, v2, :cond_a

    const/16 v2, 0xf

    .line 1329
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    return v0
.end method

.method public final e()Lcom/yandex/metrica/impl/ob/ka$c$e$a;
    .locals 3

    const-wide/16 v0, 0x0

    .line 1218
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->b:J

    .line 1219
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->c:J

    const/4 v0, 0x0

    .line 1220
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->d:I

    const-string v1, ""

    .line 1221
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->e:Ljava/lang/String;

    .line 1222
    sget-object v2, Lcom/yandex/metrica/impl/ob/g;->c:[B

    iput-object v2, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->f:[B

    const/4 v2, 0x0

    .line 1223
    iput-object v2, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->g:Lcom/yandex/metrica/impl/ob/ka$c$b;

    .line 1224
    iput-object v2, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->h:Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;

    .line 1225
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->i:Ljava/lang/String;

    .line 1226
    iput-object v2, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->j:Lcom/yandex/metrica/impl/ob/ka$c$e$a$a;

    .line 1227
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->k:I

    .line 1228
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->l:I

    const/4 v0, -0x1

    .line 1229
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->m:I

    .line 1230
    sget-object v1, Lcom/yandex/metrica/impl/ob/g;->c:[B

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->n:[B

    .line 1231
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->o:I

    .line 1232
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a;->a:I

    return-object p0
.end method
