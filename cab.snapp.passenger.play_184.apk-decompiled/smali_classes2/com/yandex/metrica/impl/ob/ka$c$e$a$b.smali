.class public final Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;
.super Lcom/yandex/metrica/impl/ob/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/ka$c$e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/ka$c$e$a$b$a;
    }
.end annotation


# instance fields
.field public b:[Lcom/yandex/metrica/impl/ob/ka$a;

.field public c:[Lcom/yandex/metrica/impl/ob/ka$d;

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Lcom/yandex/metrica/impl/ob/ka$c$e$a$b$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 873
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/e;-><init>()V

    .line 874
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->d()Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;

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

    .line 734
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->b(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;

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

    .line 890
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->b:[Lcom/yandex/metrica/impl/ob/ka$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 891
    :goto_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->b:[Lcom/yandex/metrica/impl/ob/ka$a;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 892
    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 894
    invoke-virtual {p1, v3, v2}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/e;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 898
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->c:[Lcom/yandex/metrica/impl/ob/ka$d;

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    .line 899
    :goto_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->c:[Lcom/yandex/metrica/impl/ob/ka$d;

    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 900
    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 902
    invoke-virtual {p1, v2, v0}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/e;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 906
    :cond_3
    iget v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->d:I

    if-eq v0, v2, :cond_4

    const/4 v1, 0x3

    .line 907
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(II)V

    .line 909
    :cond_4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->e:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x4

    .line 910
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 912
    :cond_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->f:Lcom/yandex/metrica/impl/ob/ka$c$e$a$b$a;

    if-eqz v0, :cond_6

    const/4 v1, 0x5

    .line 913
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/e;)V

    .line 915
    :cond_6
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/e;->a(Lcom/yandex/metrica/impl/ob/b;)V

    return-void
.end method

.method public final b(Lcom/yandex/metrica/impl/ob/a;)Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 959
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->a()I

    move-result v0

    if-eqz v0, :cond_e

    const/16 v1, 0xa

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_a

    const/16 v1, 0x12

    if-eq v0, v1, :cond_6

    const/16 v1, 0x18

    if-eq v0, v1, :cond_4

    const/16 v1, 0x22

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_1

    .line 964
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/g;->a(Lcom/yandex/metrica/impl/ob/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1025
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->f:Lcom/yandex/metrica/impl/ob/ka$c$e$a$b$a;

    if-nez v0, :cond_2

    .line 1026
    new-instance v0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b$a;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b$a;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->f:Lcom/yandex/metrica/impl/ob/ka$c$e$a$b$a;

    .line 1028
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->f:Lcom/yandex/metrica/impl/ob/ka$c$e$a$b$a;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/a;->a(Lcom/yandex/metrica/impl/ob/e;)V

    goto :goto_0

    .line 1021
    :cond_3
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->e:Ljava/lang/String;

    goto :goto_0

    .line 1010
    :cond_4
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->g()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    goto :goto_0

    .line 1015
    :cond_5
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->d:I

    goto :goto_0

    .line 991
    :cond_6
    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/ob/g;->b(Lcom/yandex/metrica/impl/ob/a;I)I

    move-result v0

    .line 992
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->c:[Lcom/yandex/metrica/impl/ob/ka$d;

    if-nez v1, :cond_7

    const/4 v1, 0x0

    goto :goto_1

    :cond_7
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    .line 993
    new-array v0, v0, [Lcom/yandex/metrica/impl/ob/ka$d;

    if-eqz v1, :cond_8

    .line 996
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->c:[Lcom/yandex/metrica/impl/ob/ka$d;

    invoke-static {v4, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 998
    :cond_8
    :goto_2
    array-length v3, v0

    sub-int/2addr v3, v2

    if-ge v1, v3, :cond_9

    .line 999
    new-instance v3, Lcom/yandex/metrica/impl/ob/ka$d;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/ka$d;-><init>()V

    aput-object v3, v0, v1

    .line 1000
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Lcom/yandex/metrica/impl/ob/a;->a(Lcom/yandex/metrica/impl/ob/e;)V

    .line 1001
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->a()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1004
    :cond_9
    new-instance v2, Lcom/yandex/metrica/impl/ob/ka$d;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/ka$d;-><init>()V

    aput-object v2, v0, v1

    .line 1005
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/a;->a(Lcom/yandex/metrica/impl/ob/e;)V

    .line 1006
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->c:[Lcom/yandex/metrica/impl/ob/ka$d;

    goto/16 :goto_0

    .line 971
    :cond_a
    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/ob/g;->b(Lcom/yandex/metrica/impl/ob/a;I)I

    move-result v0

    .line 972
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->b:[Lcom/yandex/metrica/impl/ob/ka$a;

    if-nez v1, :cond_b

    const/4 v1, 0x0

    goto :goto_3

    :cond_b
    array-length v1, v1

    :goto_3
    add-int/2addr v0, v1

    .line 973
    new-array v0, v0, [Lcom/yandex/metrica/impl/ob/ka$a;

    if-eqz v1, :cond_c

    .line 976
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->b:[Lcom/yandex/metrica/impl/ob/ka$a;

    invoke-static {v4, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 978
    :cond_c
    :goto_4
    array-length v3, v0

    sub-int/2addr v3, v2

    if-ge v1, v3, :cond_d

    .line 979
    new-instance v3, Lcom/yandex/metrica/impl/ob/ka$a;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/ka$a;-><init>()V

    aput-object v3, v0, v1

    .line 980
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Lcom/yandex/metrica/impl/ob/a;->a(Lcom/yandex/metrica/impl/ob/e;)V

    .line 981
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/a;->a()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 984
    :cond_d
    new-instance v2, Lcom/yandex/metrica/impl/ob/ka$a;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/ka$a;-><init>()V

    aput-object v2, v0, v1

    .line 985
    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/a;->a(Lcom/yandex/metrica/impl/ob/e;)V

    .line 986
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->b:[Lcom/yandex/metrica/impl/ob/ka$a;

    goto/16 :goto_0

    :cond_e
    return-object p0
.end method

.method protected final c()I
    .locals 5

    .line 920
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/e;->c()I

    move-result v0

    .line 921
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->b:[Lcom/yandex/metrica/impl/ob/ka$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    move v1, v0

    const/4 v0, 0x0

    .line 922
    :goto_0
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->b:[Lcom/yandex/metrica/impl/ob/ka$a;

    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 923
    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    .line 926
    invoke-static {v4, v3}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/e;)I

    move-result v3

    add-int/2addr v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 930
    :cond_2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->c:[Lcom/yandex/metrica/impl/ob/ka$d;

    const/4 v3, 0x2

    if-eqz v1, :cond_4

    array-length v1, v1

    if-lez v1, :cond_4

    .line 931
    :goto_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->c:[Lcom/yandex/metrica/impl/ob/ka$d;

    array-length v4, v1

    if-ge v2, v4, :cond_4

    .line 932
    aget-object v1, v1, v2

    if-eqz v1, :cond_3

    .line 935
    invoke-static {v3, v1}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/e;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 939
    :cond_4
    iget v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->d:I

    if-eq v1, v3, :cond_5

    const/4 v2, 0x3

    .line 941
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 943
    :cond_5
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->e:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x4

    .line 944
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->e:Ljava/lang/String;

    .line 945
    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 947
    :cond_6
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->f:Lcom/yandex/metrica/impl/ob/ka$c$e$a$b$a;

    if-eqz v1, :cond_7

    const/4 v2, 0x5

    .line 949
    invoke-static {v2, v1}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/e;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    return v0
.end method

.method public final d()Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;
    .locals 1

    .line 878
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ka$a;->d()[Lcom/yandex/metrica/impl/ob/ka$a;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->b:[Lcom/yandex/metrica/impl/ob/ka$a;

    .line 879
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ka$d;->d()[Lcom/yandex/metrica/impl/ob/ka$d;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->c:[Lcom/yandex/metrica/impl/ob/ka$d;

    const/4 v0, 0x2

    .line 880
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->d:I

    const-string v0, ""

    .line 881
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 882
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->f:Lcom/yandex/metrica/impl/ob/ka$c$e$a$b$a;

    const/4 v0, -0x1

    .line 883
    iput v0, p0, Lcom/yandex/metrica/impl/ob/ka$c$e$a$b;->a:I

    return-object p0
.end method
