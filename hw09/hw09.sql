CREATE TABLE parents AS
  SELECT "abraham" AS parent, "barack" AS child UNION
  SELECT "abraham"          , "clinton"         UNION
  SELECT "delano"           , "herbert"         UNION
  SELECT "fillmore"         , "abraham"         UNION
  SELECT "fillmore"         , "delano"          UNION
  SELECT "fillmore"         , "grover"          UNION
  SELECT "eisenhower"       , "fillmore";

CREATE TABLE dogs AS
  SELECT "abraham" AS name, "long" AS fur, 26 AS height UNION
  SELECT "barack"         , "short"      , 52           UNION
  SELECT "clinton"        , "long"       , 47           UNION
  SELECT "delano"         , "long"       , 46           UNION
  SELECT "eisenhower"     , "short"      , 35           UNION
  SELECT "fillmore"       , "curly"      , 32           UNION
  SELECT "grover"         , "short"      , 28           UNION
  SELECT "herbert"        , "curly"      , 31;

CREATE TABLE sizes AS
  SELECT "toy" AS size, 24 AS min, 28 AS max UNION
  SELECT "mini"       , 28       , 35        UNION
  SELECT "medium"     , 35       , 45        UNION
  SELECT "standard"   , 45       , 60;


-- The size of each dog
CREATE TABLE size_of_dogs AS
  SELECT name,size from dogs, sizes where height > min and height <= max;


-- All dogs with parents ordered by decreasing height of their parent
CREATE TABLE by_parent_height AS
  SELECT a.name from dogs as a, parents as b, dogs as c where b.child = a.name and b.parent = c.name order by c.height;


-- Filling out this helper table is optional
CREATE TABLE siblings AS
  SELECT a.name as brother1, b.name as brother2, a.height as height1, b.height as height2, e.size as size1, f.size as size2
  from dogs as a, dogs as b, parents as c, parents as d, sizes as e, sizes as f
  where a.name = c.child and b.name = d.child and c.parent = d.parent and a.name< b.name and
   a.height > e.min and a.height <= e.max and b.height > f.min and b.height <= f.max;

-- Sentences about siblings that are the same size

CREATE TABLE sentences AS
  SELECT "The two siblings, " || brother1 || " plus " || brother2 ||
   " have the same size: " || size1
   from siblings where size1 = size2;
