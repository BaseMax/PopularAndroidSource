.class public final Lcom/yandex/metrica/impl/ob/ka$c$d;
.super Lcom/yandex/metrica/impl/ob/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ka$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/ka$c$d$a;
    }
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:I

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:I

.field public n:[Lcom/yandex/metrica/impl/ob/ka$c$d$a;

.field public o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1736
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/e;-><init>()V

    .line 1737
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ka$c$d;->d()Lcom/yandex/metrica/impl/ob/ka$c$d;

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

    .line 1586
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ka$c$d;->b(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/ka$c$d;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/yandex/metrica/impl/ob/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1762
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1763
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 1765
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 1766
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 1768
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x4

    .line 1769
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 1771
    :cond_2
    iget v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->e:I

    if-eqz v0, :cond_3

    const/4 v2, 0x5

    .line 1772
    invoke-virtual {p1, v2, v0}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 1774
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0xa

    .line 1775
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 1777
    :cond_4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0xf

    .line 1778
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 1780
    :cond_5
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->h:Z

    if-eqz v0, :cond_6

    const/16 v2, 0x11

    .line 1781
    invoke-virtual {p1, v2, v0}, Lcom/yandex/metrica/impl/ob/b;->a(IZ)V

    .line 1783
    :cond_6
    iget v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->i:I

    if-eqz v0, :cond_7

    const/16 v2, 0x12

    .line 1784
    invoke-virtual {p1, v2, v0}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 1786
    :cond_7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x13

    .line 1787
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 1789
    :cond_8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0x14

    .line 1790
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 1792
    :cond_9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0x15

    .line 1793
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 1795
    :cond_a
    iget v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->m:I

    if-eqz v0, :cond_b

    const/16 v2, 0x16

    .line 1796
    invoke-virtual {p1, v2, v0}, Lcom/yandex/metrica/impl/ob/b;->b(II)V

    .line 1798
    :cond_b
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->n:[Lcom/yandex/metrica/impl/ob/ka$c$d$a;

    if-eqz v0, :cond_d

    array-length v0, v0

    if-lez v0, :cond_d

    const/4 v0, 0x0

    .line 1799
    :goto_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->n:[Lcom/yandex/metrica/impl/ob/ka$c$d$a;

    array-length v3, v2

    if-ge v0, v3, :cond_d

    .line 1800
    aget-object v2, v2, v0

    if-eqz v2, :cond_c

    const/16 v3, 0x17

    .line 1802
    invoke-virtual {p1, v3, v2}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/e;)V

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1806
    :cond_d
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/16 v0, 0x18

    .line 1807
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 1809
    :cond_e
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/e;->a(Lcom/yandex/metrica/impl/ob/b;)V

    return-void
.end method

.method public final b(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/ka$c$d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1884
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1889
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/g;->a(Lcom/yandex/metrica/impl/ob/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1963
    :sswitch_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->o:Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    const/16 v0, 0xba

    .line 1944
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/g;->b(Lcom/yandex/metrica/impl/ob/a;I)I

    move-result v0

    .line 1945
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->n:[Lcom/yandex/metrica/impl/ob/ka$c$d$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 1946
    new-array v0, v0, [Lcom/yandex/metrica/impl/ob/ka$c$d$a;

    if-eqz v1, :cond_2

    .line 1949
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->n:[Lcom/yandex/metrica/impl/ob/ka$c$d$a;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1951
    :cond_2
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_3

    .line 1952
    new-instance v2, Lcom/yandex/metrica/impl/ob/ka$c$d$a;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/ka$c$d$a;-><init>()V

    aput-object v2, v0, v1

    .line 1953
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/yandex/metrica/impl/ob/a;->a(Lcom/yandex/metrica/impl/ob/e;)V

    .line 1954
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->a()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1957
    :cond_3
    new-instance v2, Lcom/yandex/metrica/impl/ob/ka$c$d$a;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/ka$c$d$a;-><init>()V

    aput-object v2, v0, v1

    .line 1958
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/a;->a(Lcom/yandex/metrica/impl/ob/e;)V

    .line 1959
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->n:[Lcom/yandex/metrica/impl/ob/ka$c$d$a;

    goto :goto_0

    .line 1939
    :sswitch_2
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->k()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->m:I

    goto :goto_0

    .line 1935
    :sswitch_3
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->l:Ljava/lang/String;

    goto :goto_0

    .line 1931
    :sswitch_4
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->k:Ljava/lang/String;

    goto :goto_0

    .line 1927
    :sswitch_5
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->j:Ljava/lang/String;

    goto :goto_0

    .line 1923
    :sswitch_6
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->k()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->i:I

    goto :goto_0

    .line 1919
    :sswitch_7
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->h:Z

    goto :goto_0

    .line 1915
    :sswitch_8
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->g:Ljava/lang/String;

    goto/16 :goto_0

    .line 1911
    :sswitch_9
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->f:Ljava/lang/String;

    goto/16 :goto_0

    .line 1907
    :sswitch_a
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->k()I

    move-result v0

    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->e:I

    goto/16 :goto_0

    .line 1903
    :sswitch_b
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->d:Ljava/lang/String;

    goto/16 :goto_0

    .line 1899
    :sswitch_c
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 1895
    :sswitch_d
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->b:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_e
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_e
        0xa -> :sswitch_d
        0x12 -> :sswitch_c
        0x22 -> :sswitch_b
        0x28 -> :sswitch_a
        0x52 -> :sswitch_9
        0x7a -> :sswitch_8
        0x88 -> :sswitch_7
        0x90 -> :sswitch_6
        0x9a -> :sswitch_5
        0xa2 -> :sswitch_4
        0xaa -> :sswitch_3
        0xb0 -> :sswitch_2
        0xba -> :sswitch_1
        0xc2 -> :sswitch_0
    .end sparse-switch
.end method

.method protected final c()I
    .locals 5

    .line 1814
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/e;->c()I

    move-result v0

    .line 1815
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1816
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->b:Ljava/lang/String;

    const/4 v3, 0x1

    .line 1817
    invoke-static {v3, v1}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1819
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    .line 1820
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->c:Ljava/lang/String;

    .line 1821
    invoke-static {v1, v3}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1823
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x4

    .line 1824
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->d:Ljava/lang/String;

    .line 1825
    invoke-static {v1, v3}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1827
    :cond_2
    iget v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->e:I

    if-eqz v1, :cond_3

    const/4 v3, 0x5

    .line 1829
    invoke-static {v3, v1}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1831
    :cond_3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0xa

    .line 1832
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->f:Ljava/lang/String;

    .line 1833
    invoke-static {v1, v3}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1835
    :cond_4
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/16 v1, 0xf

    .line 1836
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->g:Ljava/lang/String;

    .line 1837
    invoke-static {v1, v3}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1839
    :cond_5
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->h:Z

    if-eqz v1, :cond_6

    const/16 v1, 0x11

    .line 1841
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/b;->f(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1843
    :cond_6
    iget v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->i:I

    if-eqz v1, :cond_7

    const/16 v3, 0x12

    .line 1845
    invoke-static {v3, v1}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1847
    :cond_7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0x13

    .line 1848
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->j:Ljava/lang/String;

    .line 1849
    invoke-static {v1, v3}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1851
    :cond_8
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x14

    .line 1852
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->k:Ljava/lang/String;

    .line 1853
    invoke-static {v1, v3}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1855
    :cond_9
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const/16 v1, 0x15

    .line 1856
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->l:Ljava/lang/String;

    .line 1857
    invoke-static {v1, v3}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1859
    :cond_a
    iget v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->m:I

    if-eqz v1, :cond_b

    const/16 v3, 0x16

    .line 1861
    invoke-static {v3, v1}, Lcom/yandex/metrica/impl/ob/b;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1863
    :cond_b
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->n:[Lcom/yandex/metrica/impl/ob/ka$c$d$a;

    if-eqz v1, :cond_d

    array-length v1, v1

    if-lez v1, :cond_d

    const/4 v1, 0x0

    .line 1864
    :goto_0
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->n:[Lcom/yandex/metrica/impl/ob/ka$c$d$a;

    array-length v4, v3

    if-ge v1, v4, :cond_d

    .line 1865
    aget-object v3, v3, v1

    if-eqz v3, :cond_c

    const/16 v4, 0x17

    .line 1868
    invoke-static {v4, v3}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/e;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1872
    :cond_d
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const/16 v1, 0x18

    .line 1873
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->o:Ljava/lang/String;

    .line 1874
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    return v0
.end method

.method public final d()Lcom/yandex/metrica/impl/ob/ka$c$d;
    .locals 2

    const-string v0, ""

    .line 1741
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->b:Ljava/lang/String;

    .line 1742
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->c:Ljava/lang/String;

    .line 1743
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->d:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1744
    iput v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->e:I

    .line 1745
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->f:Ljava/lang/String;

    .line 1746
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->g:Ljava/lang/String;

    .line 1747
    iput-boolean v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->h:Z

    .line 1748
    iput v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->i:I

    .line 1749
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->j:Ljava/lang/String;

    .line 1750
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->k:Ljava/lang/String;

    .line 1751
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->l:Ljava/lang/String;

    .line 1752
    iput v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->m:I

    .line 1753
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ka$c$d$a;->d()[Lcom/yandex/metrica/impl/ob/ka$c$d$a;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->n:[Lcom/yandex/metrica/impl/ob/ka$c$d$a;

    .line 1754
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->o:Ljava/lang/String;

    const/4 v0, -0x1

    .line 1755
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$d;->a:I

    return-object p0
.end method
