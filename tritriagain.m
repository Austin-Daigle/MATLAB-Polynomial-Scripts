function trilist=tritriagain(k)

% if k is a positive integer

    if isnumeric(k) && k>=0

        % if k=0, return [1]

if k==0

            trilist=ones(1,1);

        % if k=1, return [1 1 1]

        elseif k==1

            trilist=ones(1,3);

        % if k>1

else

            % first calculate the sequence at level k-1

            prev=tritriagain(k-1);

            % initialize trilist 2*k+1 1s

            trilist=ones(1,2*k+1);

            % calcaulte the integers of level k

            for i = 2:2*k

                % if current entry is 2nd entry

                if i==2

                    trilist(i)=prev(i-1)+prev(i);

                % if the current entry is next-to last entry

                elseif i==2*k

                    trilist(i)=prev(i-1)+prev(i-2);

% if the current entry is other than 2nd entry and next to last entry

                else

                    trilist(i)=prev(i-2)+prev(i-1)+prev(i);

                end

            end

        end

   else

        trilist=-1;

   end

end